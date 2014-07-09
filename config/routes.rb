Rails.application.routes.draw do
  root 'notes#index'

  get 'notes' => 'notes#index'
  get 'notes/new' => 'notes#new'
  post 'notes' => 'notes#create'
end
