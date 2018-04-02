Rails.application.routes.draw do
  resources :notes do
    resources :talks
  end
  devise_for :users
  root 'notes#index'
  namespace :api do
    namespace :v1 do
      resources :notes do
        resources :talks
      end
    end
  end
  #as: "comments", path: "comments"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
