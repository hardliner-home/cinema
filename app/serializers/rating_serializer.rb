class RatingSerializer < ApplicationSerializer
  belongs_to :movie
  attributes :id, :mark
end
