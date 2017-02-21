class WelcomeController < ApplicationController
  def index
  end
  def unregistered
  	render layout: "landing"
  end

  def payment_succed
  	cookies[:shopping_cart_id] = nil 
  end
  	
end
