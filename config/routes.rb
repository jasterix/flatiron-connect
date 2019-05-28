Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :follows
  resources :resources
  resources :instructors
  resources :students
  resources :notes
  resources :mods
end
