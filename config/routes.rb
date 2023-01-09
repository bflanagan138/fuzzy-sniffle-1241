Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  patch '/chefs/:id', to: 'chefs#show'
  resources :chefs, only: [:show] do
    resources :dishes, only: [:show]
  end

  resources :dishes, only: [:show]
end
