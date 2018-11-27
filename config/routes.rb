Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    resources :books, except: [:new, :edit]
    #resources :users, only: [:show, :update, :create]
  end 

  scope '/api' do
    resources :users
    post 'user_token' => 'user_token#create'
  end

end
