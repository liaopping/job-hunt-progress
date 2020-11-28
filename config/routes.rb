Rails.application.routes.draw do
  devise_scope :job_hunter do
    root 'job_hunters/sessions#new'
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
  end

  devise_for :job_hunters, :controllers => {
    :registrations => "job_hunters/registrations",
    :sessions => "job_hunters/sessions"
  }

  resources :companies, :job_hunt_services
  resources :job_hunters do
    resources :selections, only: [:index, :show]
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
