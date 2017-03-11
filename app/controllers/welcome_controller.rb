class WelcomeController < ApplicationController
  def unregistered
  	render layout: "landing"
  end

  def payment_succed
  	"cookies[:shopping_cart_id] = nil" 
  end
  def index
  	@users = User.all.order("id")
  end
  def destroy
  	@user = User.find(params[:id])
  	@user.destroy

  	if @user.destroy
  		redirect_to root_url, notice: "Usuario Eliminado"
    
    end
  end



  
end
