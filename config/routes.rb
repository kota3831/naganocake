Rails.application.routes.draw do

 
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  namespace :public do
    resources :items, only: [:index, :show]
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }


  root to: 'public/homes#top'
  get '/about' => 'public/homes#about'
  get 'customers/mypage' => 'public/customers#show'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
