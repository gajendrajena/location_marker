Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post 'user/token' => 'user_token#create'
    post 'user/current' => 'users#current'
  end
end
