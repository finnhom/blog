Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments do
      resources :likes
    end
  end

  root 'welcome#index'
end
