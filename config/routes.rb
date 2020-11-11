Rails.application.routes.draw do
  devise_for :job_hunters
  root 'companies#index'
  get 'companies/show'
end
