Rails.application.routes.draw do

  resources :groups
  resources :shedules
  resources :disciplines
  #get 'discipline#student_disciplines'

  devise_for :users

  get 'static/hello'
  root 'static#hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
