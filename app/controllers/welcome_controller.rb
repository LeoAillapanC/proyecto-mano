class WelcomeController < ApplicationController
  def index
  	render layout: "landing"
  end

  def unregistered
  	render layout: "landing"
  end
end
