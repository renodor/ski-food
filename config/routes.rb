Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    resources :categories, only: :index

    resources :dishes
    root to: 'categories#index'
  end
end
