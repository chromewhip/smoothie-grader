 Finalproj::Application.routes.draw do
  
  root to: 'smoothies#index'

  get '/nutritional' => 'smoothies#nutritional'
  get '/nutritionaljson' => 'smoothies#nutritionaljson'
  get 'work' => 'smoothies#work'


end