Rails.application.routes.draw do

  get 'favorite_spots/create'
  get 'favorite_spots/destroy'
  get 'travellers/show'
  # resources :travellers, only: [:show]

  devise_for :travellers, controllers: {
  sessions:      'travellers/sessions',
  passwords:     'travellers/passwords',
  registrations: 'travellers/registrations'
  }

  root 'spots#top'

  resources :travellers do
  	resources :spots, only: [:new, :create, :edit, :update, :destroy]
    resources :itineraries, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :spots, only: [:index, :show]
  resources :itineraries, only: [:index, :show]

  resources :spots do
    resource :favorite_spots, only: [:create, :update, :destroy]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
