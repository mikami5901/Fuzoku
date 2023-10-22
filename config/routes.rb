Rails.application.routes.draw do
  root 'top#index'
  #root to: redirect('/top/index')
  #root to: redirect('/girls')
  devise_for :kanrisyas
  get 'top/index'
  get 'aceess/index'
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :uses
  get 'event_view/index'
  resources :events
  resources :bookings
  resources :contacts, only: [:new, :create]
  get 'contacts/new'
  get 'waittime/index'
  get 'waittime/show'
  resources :yoyakus
  resources :reserves
  get 'system/index'
  resources :ryokins
  resources :systems
  get 'janitor/index'
  get 'newcomers/index'
  get 'plan/index'
  get 'plan/show'
  get 'girls/janitor'
  resources :options
  resources :option_lists
  resources :tags
  resources :schedules
  resources :data_pages
  resources :girls
  get 'contacts', to: 'contacts#new'
  get 'waittime', to: 'waittime#index'
  get 'event_view', to: 'event_view#index'
  get 'plan', to: 'plan#index'
  get 'plan/:work_day', to: 'plan#show'
  get 'newcomers', to: 'newcomers#index'
  get 'system', to: 'system#index'
  get 'janitor', to: 'janitor#index'
  get 'girls/janitor' , to: 'girls#janitor'
  get 'aceess', to: 'aceess#index'
  get 'top', to: 'top#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
