Rails.application.routes.draw do
  get 'spots/index'
  get 'spots/show'
  get 'spots/new'
  get 'spots/create'
  get 'spots/edit'
  get 'spots/update'
  get 'spots/destroy'
  devise_for :travellers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
