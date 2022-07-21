Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/productdetails", to: "productdetails#index"
  get "/"
  # root "product#index"
  # get "/product_title", to: "product#index"


  # get "/userlist", to: "userlist#index"
  # get "/todos", to: "todos#getAllTodos"

  # Defines the root path route ("/")
  # root "articles#index"
end
