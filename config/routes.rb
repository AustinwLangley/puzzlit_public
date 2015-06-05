Rails.application.routes.draw do

  root "sessions#new"

# User routes
	get "users" => "users#index"
	post "users" => "users#create"
	get "signup" => "users#new", as: :new_user
	get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
	delete '/logout' => 'sessions#destroy'

# Puzzle routes
  get "puzzles/" => "puzzles#index"
  get "puzzles/new" => "puzzles#new", as: :new_puzzle 
  get "puzzles/:id" => "puzzles#show", as: :puzzle
  post "puzzles/" => "puzzles#create"
  get "puzzles/:id/edit" => "puzzles#edit", as: :edit_puzzle
  patch "puzzles/:id" => "puzzles#update" 
  delete "puzzles/:id" => "puzzzles#destroy"

  get "reports" => "reports#index"
  get "reports/new" => "reports#new", as: :new_report
  post "users/:id/reports" => "reports#create", as: :user_reports
  get "reports/:id" => "reports#show", as: :report
  get "reports/:id/edit" => "reports#edit", as: :edit_report
  patch "reports/:id" => "reports#update"
  delete "reports/:id" => "reports#destroy"



end
