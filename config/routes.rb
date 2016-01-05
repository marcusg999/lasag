Rails.application.routes.draw do

root 'users#home'

get 'users/index' => 'users#index'

get 'users/new' => 'users#new'

post 'user/' => 'users#create'

get 'users/:id' => 'users#show', as: :user_show

get 'signup'  => 'users#new'
get 'sessions/new' => 'sessions#new',as: :new_session

post 'sessions/new' => 'sessions#create', as: :create_session
delete 'sessions/destroy' => 'sessions#destroy'


get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'
resources :users

end

