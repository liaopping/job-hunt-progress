Rails.application.routes.draw do
  devise_for :job_hunters
  root 'companies#index'
  get 'companies/show'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
