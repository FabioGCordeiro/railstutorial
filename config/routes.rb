Rails.application.routes.draw do

  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  root 'pages#about';
  resources :posts
  resources :categories
end
