Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'static_pages#home'

get '/product', to: 'static_pages#product'
get '/contact', to: 'static_pages#contact'
get '/about', to: 'static_pages#about'
get '/news', to: 'static_pages#news'

end
