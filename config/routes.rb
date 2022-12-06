Rails.application.routes.draw do
  root "pages#index"
  # Routes the pages to the home page 

  resources :pages
  # Resources maps all of the conventional routes for a collection of resources, such as "pages"
end
