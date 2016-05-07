Rails.application.routes.draw do
  scope :api do
    get '/post/', to: 'api/posts#index'
    post '/post/', to: 'api/posts#new'
  end
end
