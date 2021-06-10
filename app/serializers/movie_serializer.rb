class MovieSerializer < ApplicationSerializer
  attributes :id, :title, :show_start_at, :show_end_at, :price, :average_rating
  has_many :ratings
end
