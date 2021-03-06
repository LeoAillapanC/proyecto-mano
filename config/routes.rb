Rails.application.routes.draw do


  resources :products
  devise_for :users, path: 'auto', path_names: { sing_in: 'login', sing_out:'logout',password: 'secret',confirmation:'verification', unlock:'unblock',registration:'register',sing_up:'cmon_let_me_in'}
authenticated :user do
	get "/carrito", to: "shopping_carts#show"
	root 'welcome#index'
end	

unauthenticated :user do
	devise_scope :user do
		root 'welcome#unregistered', as: :unregistered_root 
	end
end


  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
