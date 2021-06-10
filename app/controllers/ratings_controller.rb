class RatingsController < ApplicationController

  before_action :set_movie, only: [:create]

  def create
    rating = @movie.ratings.build(rating_params)
    rating.user = current_user
    respond_with_save(rating, serializer: RatingSerializer)
  end

  private

  def rating_params
    params.require(:rating).permit(:mark)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

end
