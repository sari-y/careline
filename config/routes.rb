Rails.application.routes.draw do

  namespace :admin do
    get 'homes/top'
  end
  namespace :admin do
    get 'informations/show'
    get 'informations/edit'
    get 'informations/new'
    post 'informations' => 'informations#create'
  end
  namespace :admin do
    get 'facilities/index'
    get 'facilities/show'
    get 'facilities/edit'
    get 'facilities/new'
  end
  namespace :admin do
    get 'contacts/index'
    get 'contacts/show'
  end
  namespace :public do
    get 'contacts/new'
    get 'contacts/show'
  end
  namespace :public do
    get 'facilities/index'
    get 'facilities/show'
  end
  namespace :public do
    get 'informations/show'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end



devise_for :public,skip: [:registrations, :sessions, :passwords], controllers: {
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
