Rails.application.routes.draw do
  get 'hello' => 'start#hello'
  get 'index' => 'start#index'
  post 'index' => 'start#index'
end
