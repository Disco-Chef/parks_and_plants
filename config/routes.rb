Rails.application.routes.draw do
  get 'plants/new'
  resources :gardens do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]
end
