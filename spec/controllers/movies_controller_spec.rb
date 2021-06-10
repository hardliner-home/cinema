require 'rails_helper'

describe MoviesController, type: :controller do

  context '#index' do
    before { get 'index' }

    it 'OK status' do
      expect(response).to have_http_status(:ok)
    end

    it 'Render empty JSON' do
      expect(json_body).to eq({data: []})
    end
  end

  context '#show' do
    let!(:movie) { create(:movie) }
    before { get 'show', params: { id: movie.id } }

    it 'OK status' do
      expect(response).to have_http_status(:ok)
    end

    it 'Render movie JSON' do
      expect(json_body[:data][:attributes][:title]).to eq(movie.title)
    end
  end

  context 'Admin Update Movie' do
    let!(:admin) { create(:user, { is_admin: true }) }
    let!(:movie) { create(:movie) }

    before { sign_in(admin, scope: :user) }
    before { put 'update', params: { id: movie.id, movie: { price: 100 } } }

    it 'OK status' do
      expect(response).to have_http_status(:ok)
    end

    it 'Render movie JSON' do
      expect(json_body[:data][:attributes][:price][:cents]).to eq(10000)
    end
  end

  context 'Regular User Update Movie' do
    let!(:user) { create(:user, { is_admin: false }) }
    let!(:movie) { create(:movie) }

    before { sign_in(user, scope: :user) }
    before { put 'update', params: { id: movie.id, movie: { price: 100 } } }

    it 'Unauthorized status' do
      expect(response).to have_http_status(:unauthorized)
    end

  end

  # context '#destroy' do
  #   before { delete :destroy, params: { id: '123' } }
  #   it { expect(response).to redirect_to admins_widgets_path }
  #   it { expect(flash[:notice]).to eq 'Successfully archived!' }
  # end
end
