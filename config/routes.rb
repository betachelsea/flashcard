Rails.application.routes.draw do
  # root 'welcome#index'
  root 'cards#index'
  resources :cards
end
