class MovieDetailsSerializer < ApplicationSerializer
  set_type :movie
  attributes :id, :title, :show_start_at, :show_end_at, :price, :average_rating, :imdb_details
  has_many :ratings
end
