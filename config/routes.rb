Rails.application.routes.draw do
  # root 'welcome#index'
  root 'cards#index'
  resources :cards
  resources :paragraphs
end
