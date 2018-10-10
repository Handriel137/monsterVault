Rails.application.routes.draw do
  resources :attacks
  resources :reactions
  resources :legendary_actions
  resources :special_abilities
  resources :monsters

  root 'monsters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
