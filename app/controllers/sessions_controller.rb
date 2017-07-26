class SessionsController < ApplicationController

	def new
		
	end

  def create
  	session[:name] = params[:name]
  	if !current_user.blank?
	  	redirect_to '/secrets'
	  else
	  	redirect_to login_path
	  end
  end

  def destroy
	  	session.delete :name
	  	redirect_to login_path
  end

end