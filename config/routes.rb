Rails.application.routes.draw do

  get '/', to: "home#index"
  get '/home', to: "home#index"
  get '/dashboard', to: "dashboard#index"

  namespace :home do
    get '/resources', to: "resources#index"
    get '/resource_fields', to: "resource_fields#index"
    get '/resource_actions', to: "resource_actions#index"
  end

  namespace :dashboard do
    get '/resources', to: "resources#index"
    get '/resource_fields', to: "resource_fields#index"
    get '/resource_actions', to: "resource_actions#index"
  end

  namespace :api do
    namespace :v1 do
      get 'resources/index'
      post 'resources/create'
      delete 'resources/:id', to: 'resources#destroy'
    end
  end

end
