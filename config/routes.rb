Rails.application.routes.draw do
  get 'choices/create'
  get 'choices/destroy'
  get 'questions/index'
  get 'questions/show'
  get 'questions/new'
  get 'questions/edit'
  get 'questions/create'
  get 'questions/update'
  get 'questions/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
