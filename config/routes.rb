Rails.application.routes.draw do
  resources :microblogs
  resources :microposts
  resources :users
  root 'application#goodbye'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
