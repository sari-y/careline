Rails.application.routes.draw do

devise_for :public,skip: [:registrations, :sessions, :passwords], controllers: {
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  namespace :admin do
    get 'homes/top'
    resources :informations, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :facilities, only: [:new, :create, :index, :show, :edit, :update, :destroy]
    resources :contacts, only: [:index, :show]
  end



  scope module: :public do
  root 'homes#top'
  get '/about' => 'homes#about'
  resources :informations, only: [:show]
  resources :facilities, only: [:index, :show]
  resources :contacts, only: [:new, :show]

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
