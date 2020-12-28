Rails.application.routes.draw do
  root "products#index"
  resources "products"

  post "multiple_destroy", to: "products#multiple_destroy", as: "products_destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
