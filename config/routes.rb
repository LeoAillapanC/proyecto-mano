Rails.application.routes.draw do



  resources :products
  resources :in_shopping_carts, only: [ :create, :destroy, :new, :show]

  devise_for :users, path: 'auto', path_names: { sing_in: 'login', sing_out:'logout',password: 'secret',confirmation:'verification', unlock:'unblock',registration:'register',sing_up:'cmon_let_me_in'}
	resources :articles, only: [:create, :show]


	post "/emails/create", as: :create_email
	get "/carrito", to: "shopping_carts#show"
	get "add/:product_id", as: :add_to_cart,to: "in_shopping_carts#create"
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
  	get "/ok", to: "welcome#payment_succed"

	authenticated :user do
  		root 'welcome#index'
	end
	unauthenticated :user do
		devise_scope :user do
			root 'welcome#unregistered', as: :unregistered_root
		end
	end
end
