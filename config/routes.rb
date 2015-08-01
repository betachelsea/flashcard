Rails.application.routes.draw do
  root 'welcome#index'
  resources :cards
  resources :paragraphs
end
