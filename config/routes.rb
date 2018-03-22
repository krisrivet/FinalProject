Rails.application.routes.draw do
  resource :basketballs, only: [:index, :show]
  resource :clothes, only: [:index, :show]
  resource :gears, only: [:index, :show]
  resource :jerseys, only: [:index, :show]
  resource :shoes, only: [:index, :show]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
