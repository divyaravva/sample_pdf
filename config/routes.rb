Rails.application.routes.draw do
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    match '/users/generate_pdf' => 'users#generate_pdf', via: :get
  root to: 'users#index'
end
