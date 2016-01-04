Rails.application.routes.draw do


root 'users#index'

get 'users/new' => 'users#new'

post 'user/create' => 'users#create'
get 'users/:id' => 'users#show', as: :user

get 'sessions/new' => 'sessions#new',as: :new_session

post 'sessions/new' => 'sessions#create', as: :create_session

get 'signup'  => 'users#new'
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'
delete 'sessions/destroy' => 'sessions#destroy'
resources :users

end

