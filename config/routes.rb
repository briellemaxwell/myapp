Rails.application.routes.draw do
  resources :posts
  get 'pages/about'

  get 'pages/welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
