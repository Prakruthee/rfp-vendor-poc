Rails.application.routes.draw do
  # get 'rfp_request/index'

  get 'rfp_request/index'
  root 'rfp_requests#new'
  # devise_for :users
  resources :rfp_requests
  resources :rfp_answers
end
