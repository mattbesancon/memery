Rails.application.routes.draw do
  get "quiz/index"
  post 'quiz/start'
  get 'quiz/question'
  post 'quiz/question'
  post 'quiz/answer'
  get 'quiz/end'
  post 'choices/create'
  post 'choices/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :questions
end
