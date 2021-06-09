class Movie < ApplicationRecord

  has_many :ratings, dependent: :destroy

  monetize :price_cents

  validates :title,
            :imdb_id,
            presence: true


  def imdb_details
    OmdbApiService.instance.get_movie(i: imdb_id)
  end

  def average_rating
    ratings.average(:mark)
  end

end

# == Schema Information
#
# Table name: movies
#
#  id             :bigint           not null, primary key
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("USD"), not null
#  show_end_at    :date
#  show_start_at  :date
#  title          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imdb_id        :string           not null
#
