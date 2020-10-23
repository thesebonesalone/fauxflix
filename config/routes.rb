Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'welcome/home'
  root 'welcome#home'

  get 'signup', to: 'users#new'
  resources :users, except:[:new]
  resources :profiles, :lists, :movies, :tags 


  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'addtolist/:id', to: 'movies#addtolist'
  post 'removefromlist/:id', to: 'movies#removefromlist'
  post 'addlike/:id', to: 'movies#addlike'
  post 'removelike/:id', to: 'movies#removelike'
  get 'testbg', to: 'welcome#testbg'
  get 'admin', to: 'user#admin'
end

