Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  get 'welcome/index'
  root 'welcome#index'

  resources :works, :posts

end
