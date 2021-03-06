Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :words do
    collection { post :import }
    collection do
      get :search
    end
  end
  resources :weeks
  root to: 'words#index'

  # get '/search', to: 'words#search', as: 'search'
  get '/wordlist', to: 'words#wordlist', as: 'wordlist'
  get '/spellingbee', to: 'words#spellingbee', as: 'spellingbee'
  get '/randombee', to: 'words#randombeewords', as: 'randombee'
  get '/newbee/new', to: 'words#newbee', as: 'newbee'
  post '/newbee', to: 'words#createbee'
  get '/spelling_bee_practice', to: 'words#spelling_bee_practice', as: 'spelling_bee_practice'

end
