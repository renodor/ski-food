Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    resources :categories, only: :index

    resources :dishes, only: %i[show edit update]
    root to: 'categories#index'
  end
end
