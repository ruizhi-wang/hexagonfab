Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'static_pages#home'

get '/technology', to: 'static_pages#technology'
get '/contact', to: 'static_pages#contact'
get '/team', to: 'static_pages#team'
get '/news', to: 'static_pages#news'

end
