Rails.application.routes.draw do

  defaults format: :json do
    devise_for :users, controllers: {:sessions => "sessions"}
    resources :movies, only: [:index, :show, :update] do
      get :details, on: :member
      resources :ratings, only: [:create]
    end
  end

end
