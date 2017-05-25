Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"

  resource :artists
  resource :songs, not: [:index, :edit, :update]
  resource :album_image, only: [:show, :new, :create]
  resource :artist_image, only: [:show, :new, :create]
end
