Rails.application.routes.draw do
  resources :games
  resources :team_games
  resources :player_games
  resources :champions
  resources :players
  resources :teams
  resources :leagues
  resources :countries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
