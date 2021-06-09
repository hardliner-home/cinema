class MoviesController < ApplicationController

  before_action :authenticate_user!, only: :update

  before_action :set_movie, only: [:show, :update, :details]

  def index
    @movies = Movie.all
    render json: @movies.as_json(methods: [:average_rating])
  end

  def show
    render json: @movie.as_json(methods: [:average_rating])
  end

  def update
    authorize @movie
    @movie.update(movie_params)
    respond_with_save(@movie)
  end

  def details
    render json: @movie.as_json(methods: [:imdb_details, :average_rating])
  end

  private

  def movie_params
    params.require(:movie).permit(:show_start_at, :show_end_at, :price)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
