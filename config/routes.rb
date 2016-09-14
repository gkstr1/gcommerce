Rails.application.routes.draw do
  get 'carts/show'

  resources :sneakers
  
  root 'sneakers#index'
  
  resource :cart, only: [:show] do
  put 'add/:sneaker_id', to: 'carts#add', as: :add_to
  put 'remove/:sneaker_id', to: 'carts#remove', as: :remove_from
end
  
 end
