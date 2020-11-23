Rails.application.routes.draw do
  devise_for :job_hunters, :controllers => {
    :registrations => "job_hunters/registrations",
    :sessions => "job_hunters/sessions"
  }
  
  devise_scope :job_hunter do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
  end

  resources :companies, :job_hunt_services, :selections
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
