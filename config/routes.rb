Rails.application.routes.draw do
  root "pages#index"
  # Routes the pages to the home page 
  get "/pages", to: "pages#index"
  # Maps GET /pages requests to the index action of PagesController
end
