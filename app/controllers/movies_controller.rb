class MoviesController < ApplicationController

  before_action :authenticate_user!, only: :update

  before_action :set_movie, only: [:show, :update, :details]

  def index
    @movies = Movie.page(params[:page])
    render json: MovieSerializer.new(@movies)
  end

  def show
    render json: MovieSerializer.new(@movie)
  end

  def update
    authorize @movie
    @movie.update(movie_params)
    respond_with_save(@movie, serializer: MovieSerializer)
  end

  def details
    render json: MovieDetailsSerializer.new(@movie, { include: [:ratings] })
  end

  private

  def movie_params
    params.require(:movie).permit(:show_start_at, :show_end_at, :price)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
