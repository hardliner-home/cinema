require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'associations' do
    it { should have_many(:ratings).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:imdb_id) }
  end

  describe 'methods' do

    context 'IMDB Details' do
      let!(:imdb_id) { 'tt0232500' }
      let!(:movie) { create(:movie, { imdb_id: imdb_id }) }

      it 'Should provide IMDB details' do
        expect(movie.imdb_details["imdbID"]).to eq(imdb_id)
      end
    end

    context 'Should calculate AVG rating' do
      let!(:movie) { create(:movie) }
      before { movie.ratings.create([{ mark: 5 }, { mark: 3 }]) }

      it { expect(movie.average_rating).to eq(4) }
    end
  end
end
