Rails.application.routes.draw do
  get 'home' => 'pages#home', as: 'home'
  root 'pages#home'
end
