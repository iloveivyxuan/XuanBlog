Rails.application.routes.draw do
  
  root 'articles#index'

  get 'about/index'

  resources :articles do
    resources :comments
  end

  namespace :admin do 
    get '/' => 'home#index'
    resources :articles
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
