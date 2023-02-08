Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, only: [:index, :show] do
    member do
      post :answer
    end
  end
end
