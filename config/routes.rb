Rails.application.routes.draw do
  

  devise_for :usuarios 
  authenticated :usuario do
      root'welcome#index'
  end
  
  unauthenticated :usuario do
  	devise_scope :usuario do
  	 root 'welcome#unregistered' , 	as: :unregistered_root
  	end
  end
end