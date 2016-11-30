Rails.application.routes.draw do
  resources :placements,  except:  [:index]
  get 'home' => 'pages#home', as: 'home'
  root 'pages#home'
end
