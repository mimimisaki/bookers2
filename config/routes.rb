Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only:[:show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'books#top'

  get 'home/about' => 'books#about'

end
