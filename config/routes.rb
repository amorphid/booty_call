BootyCall::Application.routes.draw do
  resources :booty_addresses, only: [:create, :new]
end
