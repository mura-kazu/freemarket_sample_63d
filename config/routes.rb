Rails.application.routes.draw do
  resources  :cwavetests, only: [:index, :create, :new]
  resources :exhibit
end
