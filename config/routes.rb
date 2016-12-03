Rails.application.routes.draw do
  devise_for :users
  resources :placements,  except:  [:index]
  get 'home' => 'pages#home', as: 'home'
  root 'pages#home'
end
