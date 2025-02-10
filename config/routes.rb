Rails.application.routes.draw do

  root to: 'homes#top'
  
  get '/about' => 'homes#about'


  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  namespace :customer do
    resources :items, only: [:index, :show]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
