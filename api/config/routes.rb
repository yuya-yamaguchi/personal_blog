Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/', to: 'top#index'

      resources :users, only: %i[show]
      resources :blogs, only: %i[index]
    end
  end
end
