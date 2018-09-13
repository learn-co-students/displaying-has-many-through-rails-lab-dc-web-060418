Rails.application.routes.draw do

  get 'appointments/show'

  get 'patient/show'

  get 'patient/index'

  resources :doctors
  resources :patients
  resources :appointments, only: [:show]

end
