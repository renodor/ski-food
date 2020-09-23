Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    devise_scope :user do
      get 'login', to: 'devise/sessions#new'
    end

    resources :categories
    resources :dishes

    root to: 'categories#index'
  end
end
