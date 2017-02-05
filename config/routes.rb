Rails.application.routes.draw do

  get 'post/index'

  get 'post/show/:slug',to:'post#show', as: :posts_show
  post 'post',to:'post#create',as: :posts
  #get 'post/show'
  get 'post/new'
  get 'post/edit/:slug',to:'post#edit',as: :posts_edit
  patch 'post/edit/:slug',to:'post#update',as: :posts_update
  delete 'post/delete/:slug',to:'post#destroy',as: :posts_destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to:'pages#index'
get '/contact', to:'pages#contact', as: :contact_page
post '/contact',to:'pages#contact_post', as: :contact_post

resources :categories

end
