Rails.application.routes.draw do
  resources :dogs
  resources :employees
  get '/dogs_up_for_adoption', to: 'dogs#dogs_up_for_adoption', as: 'dogs_up_for_adoption'
  get '/adopt/:id', to: 'dogs#adopt_a_dog_form', as: 'adopt_dog_form'
  post '/adopt/:id', to: 'dogs#adopt', as: 'adopt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
