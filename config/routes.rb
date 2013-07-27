Ecc::Application.routes.draw do
  
  root to: 'participants#index'

  resources :participants do
    collection do
      get :tags
      get :name_tags
    end
  end

  resources :teams do
    collection do
      get :tags
      get :name_tags
    end    
  end
end
