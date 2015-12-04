Rails.application.routes.draw do
    default_url_options :host => "redditer.elasticbeanstalk.com"
  
    devise_for :users
    
    authenticated :user do
      root 'users#index'
    end

    unauthenticated :user do
      devise_scope :user do
        get "/" => "devise/sessions#new"
      end
    end

    resources :conversations do
      resources :messages
    end

    get 'profile' => 'profile#index'
    get 'about' => 'about#index'

    get 'subreddits/new' => 'subreddits#new'
    post 'subreddits' => 'subreddits#create'

end
