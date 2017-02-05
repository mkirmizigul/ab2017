Rails.application.routes.draw do

  get 'post/index'

  get 'post/show/:slug',to:'post#show', as: :posts_show
  #get 'post/show'

  get 'post/new'

  get 'post/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to:'pages#index'
get '/contact', to:'pages#contact', as: :contact_page
post '/contact',to:'pages#contact_post', as: :contact_post
end
