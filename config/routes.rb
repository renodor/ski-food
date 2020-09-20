Rails.application.routes.draw do
  scope '(:locale)', locale: /fr|en/ do
    devise_for :users
    resources :categories, only: :index

    resources :dishes
    root to: 'categories#index'
  end
end
