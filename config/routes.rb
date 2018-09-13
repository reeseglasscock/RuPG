Rails.application.routes.draw do
  root to: 'games#index'

  devise_for :users

  resources :games
  resources :players do
    resources :inventories
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
