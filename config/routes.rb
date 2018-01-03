Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'static_pages#home'

get '/product', to: 'static_pages#product'
get '/about', to: 'static_pages#about'
get '/news', to: 'static_pages#news'

get '/test', to: 'static_pages#test'

# Js partials
get 'correct_answer', to: 'static_page#correct_answer'

resources "contacts", only: [:new, :create]

end
