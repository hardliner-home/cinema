require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
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
