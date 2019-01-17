Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :creatures
      resources :players
      resources :encounters
    end
  end
end
