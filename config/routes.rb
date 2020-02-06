Rails.application.routes.draw do

  devise_for :travellers, controllers: {
  sessions:      'travellers/sessions',
  passwords:     'travellers/passwords',
  registrations: 'travellers/registrations'
  }

  root 'spots#top'

  resources :travellers do
  	resources :spots, only: [:new, :create, :index, :show, :edit, :update]
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
