Rails.application.routes.draw do

  #resources :articles, only: [:create, :index, :destroy]
 # resources :artilces
  get 'articles', to: 'articles#index'

  #addign a new article

  get 'articles/new', to: 'articles#new', as: :new
  post 'articles', to: 'articles#create'

  #showing one specific article
   get 'articles/:id', to: 'articles#show', as: :article
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
