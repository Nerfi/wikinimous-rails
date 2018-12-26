Rails.application.routes.draw do

  #resources :articles, only: [:create, :index, :destroy]
 # resources :artilces
  get 'articles', to: 'articles#index'

  #addign a new article

  get 'articles/new', to: 'articles#new', as: :new
  post 'articles', to: 'articles#create'

  #showing one specific article
   get 'articles/:id', to: 'articles#show', as: :article

   #adding the edit and update
   get 'articles/:id/edit', to: 'articles#edit', as: :edit
   patch 'articles/:id', to: 'articles#update'

   #destroy route and method
   delete 'articles/:id', to: 'articles#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
