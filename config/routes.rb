Rails.application.routes.draw do
  get "puzzles/" => "puzzles#index"
  get "puzzles/new" => "puzzles#new", as: :new_puzzle 
  get "puzzles/:id" => "puzzles#show", as: :puzzle
  post "puzzles/" => "puzzles#create"
  get "puzzles/:id/edit" => "puzzles#edit", as: :edit_puzzle
  patch "puzzles/:id" => "puzzles#update" 
  delete "puzzles/:id" => "puzzzles#destroy"
end
