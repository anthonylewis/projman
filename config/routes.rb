Projman::Application.routes.draw do
  resources :projects

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users do
    get 'rank'
  end
end
