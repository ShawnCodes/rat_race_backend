Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :create]
      resources :scores, only: [:index, :create]
    end
  end
end
