Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :customers, controllers: { registrations: 'registrations' }
  resources :products do
    resources :issues
    resources :reviews
  end
end
