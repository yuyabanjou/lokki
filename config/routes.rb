Rails.application.routes.draw do

  devise_for :travellers, controllers: {
  sessions:      'travellers/sessions',
  passwords:     'travellers/passwords',
  registrations: 'travellers/registrations'
  }

  root 'travellers/spots#top'

  scope module: :travellers do
  	resources :spots
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
