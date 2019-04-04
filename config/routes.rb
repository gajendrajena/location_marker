Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      post 'user/token' => 'user_token#create'
      post 'user/current' => 'users#current'
      resources :locations
    end
  end
end
