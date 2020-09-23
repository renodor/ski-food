Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    resources :categories
    resources :dishes
    root to: 'categories#index'
  end
end
