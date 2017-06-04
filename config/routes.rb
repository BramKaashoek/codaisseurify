Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "artists#index"

  resources :artists do
    resources :albums, except: [:show, :edit, :update] do
      resources :songs, except: [:index, :edit, :update]
    end
  end
  resources :artist_image, only: [:show, :new, :create]
  post "artists/:id/delete_all_songs", to: "artists#delete_all_songs", as: :delete_all_songs
end
