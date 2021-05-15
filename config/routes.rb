Rails.application.routes.draw do
  get 'msgboard/index'
  post 'msgboard/index'
  get 'hello' => 'start#hello'
  get 'index' => 'start#index'
  post 'index' => 'start#index'
end
