Rails.application.routes.draw do
 
  scope '/api' do
    resources :books, except: [:new, :edit]
    resources :users
    post 'user_token' => 'user_token#create'
  end
  get '/search', to: 'searches#search'

end
