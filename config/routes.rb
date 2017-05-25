Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :artists
  resource :songs
  resource :album_image, only [:show, :new, :create]
  resource :artist_image, only [:show, :new, :create]
end
