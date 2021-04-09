Rails.application.routes.draw do

  devise_for :users

  resources :posts, only:[:destroy, :index, :edit, :new, :create, :update]

  resources :users do
    resources :reports
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "posts#index"
end
