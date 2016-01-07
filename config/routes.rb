Rails.application.routes.draw do

root 'users#home'

get 'users/index' => 'users#index'

get 'users/new' => 'users#new'

post 'user/' => 'users#create'
get 'users/edit' => 'users#edit'
get 'users/:id' => 'users#show', as: :user_show

get 'signup'  => 'users#new'


get 'sessions/new' => 'sessions#new',as: :new_session

post 'sessions/new' => 'sessions#create', as: :create_session

get 'client/new' => 'client#new'

get 'artist/new' => 'artist#new'

get 'profile_type/new' => 'profile_type#new'



get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'

resources :sessions
resources :users

namespace :api do
    resources :artists, only: [:index, :show]
  end

    end


