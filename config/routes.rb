Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, only: [:index] do
      get :question_response

  end
end
