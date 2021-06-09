class Rating < ApplicationRecord

  belongs_to :movie, required: true
  belongs_to :user, optional: true

  validates :mark,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 1,
              less_than_or_equal_to: 5,
            }

end

# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  mark       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :bigint           not null
#  user_id    :bigint
#
# Indexes
#
#  index_ratings_on_movie_id  (movie_id)
#  index_ratings_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (movie_id => movies.id)
#  fk_rails_...  (user_id => users.id)
#
