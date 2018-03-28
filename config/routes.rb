Rails.application.routes.draw do
  get 'contacts/index'

  get 'contacts/show'

  get 'about/index'

  get 'about/show'

  get 'abouts/index'

  get 'abouts/show'

  get 'home_page/show'

  resources :basketballs, only: [:index, :show]
  resources :clothes, only: [:index, :show]
  resources :gears, only: [:index, :show]
  resources :jerseys, only: [:index, :show]
  resources :shoes, only: [:index, :show]
  resources :searches

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home_page#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
