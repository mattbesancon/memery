Rails.application.routes.draw do
  get 'choices/create'
  get 'choices/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :questions
end
