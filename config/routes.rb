Rails.application.routes.draw do



  resources :products
  devise_for :users, path: 'auto', path_names: { sing_in: 'login', sing_out:'logout',password: 'secret',confirmation:'verification', unlock:'unblock',registration:'register',sing_up:'cmon_let_me_in'}
	resources :articles, only: [:create, :show]
	resources :carrito

	post "/emails/create", as: :create_email
=begin
			RESOURCE HACE TODAS ESTAS FUNCIONES	
		get "/articles" index
		post "/articles"	create
		delete "/articles"  delete
		get "/articles/:id" show
		get "/articles/new" new 	
		get "/articles/:id/edit" edit
		patch "/articles/:id" update
		put "/articles/:id" 	uptade
=end
  post 'welcome/index'
  get "special", to:"welcome#index"

authenticated :user do
  	root 'welcome#index'
end
unauthenticated :user do
	devise_scope :user do
		root 'welcome#unregistered', as: :unregistered_root
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
