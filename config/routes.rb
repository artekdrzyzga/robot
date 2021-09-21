Rails.application.routes.draw do
  get 'moverobot/show'
  get 'moverobot/update'
  
  resources :positions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
