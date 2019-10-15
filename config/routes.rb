Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "homes/index"
  get "homes/datapage"
  get "homes/delete/:id" => 'homes#delete'
  get "homes/edit/:id" => 'homes#edit'
  get 'homes/update/:id' => 'homes#update'
  get 'homes/secondgame'
  delete 'homes/delete/:id' => 'homes#delete'
  root "homes#index"
end
