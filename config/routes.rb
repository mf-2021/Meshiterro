Rails.application.routes.draw do
  devise_for :users
  root to: "post_images#index"
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

end
