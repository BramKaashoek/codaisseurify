Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"

  resources :artists do
    resources :albums, not: [:index, :edit, :update, :show]
    resources :songs, not: [:index, :edit, :update]
  end
  resources :artist_image, only: [:show, :new, :create]

end
