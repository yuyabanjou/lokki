Rails.application.routes.draw do

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
  end

  resources :spots, only: [:index, :show]




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
