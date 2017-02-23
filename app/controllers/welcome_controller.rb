class WelcomeController < ApplicationController
  def index
  	@orders = current_user.orders
  end
  def unregistered
  	render layout: "landing"
  end

  def payment_succed
  	cookies[:shopping_cart_id] = nil 
  end
  	
end
