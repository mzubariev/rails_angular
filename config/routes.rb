Rails.application.routes.draw do
  root 'application#index'

  namespace :api, defaults: {format: :json} do
    resources :items, only: [:index, :show]
  end

  get '*path' => 'application#index'

end
