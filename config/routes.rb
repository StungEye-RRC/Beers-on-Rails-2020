Rails.application.routes.draw do
  resources :beers
  resources :companies, only: %i[index show]

  root to: "companies#index"

  # DSL - Domain Specific Language for Routing! Yay!

  # GET /companies        =>   companies#index   (Load and display all companies)
  # get "/companies", to: "companies#index", as: "companies" # companies_path

  # GET /companies/:id    =>   companies#show    (Load and display a single company by id)
  # get "/companies/:id", to: "companies#show", as: "company", constraints: { id: /\d+/ } # company_path
end
