Rails.application.routes.draw do
  get 'page/index'
  resources :concessionaria
  resources :conscesionaria
  resources :clientes
  resources :carros
  root to: "page#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
