Rails.application.routes.draw do
  get 'quiz/start'
  get 'quiz/question'
  get 'quiz/answer'
  get 'quiz/end'
  get 'choices/create'
  get 'choices/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :questions
end
