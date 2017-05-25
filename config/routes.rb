Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"

  resources :artists
  resources :songs, not: [:index, :edit, :update]
  resources :album_image, only: [:show, :new, :create]
  resources :artist_image, only: [:show, :new, :create]
end
