class AccessController < ApplicationController
	
	layout 'login'
	
	def new
	end

	def create
	  @user = User.find_by_email(params[:session][:email])
	  if @user && @user.authenticate(params[:session][:password])
	    session[:user_id] = @user.id
	    redirect_to root_url
	  else
	    flash[:success ] = "Mot de passe incorrect"
	    redirect_to access_login_path
	  end 
	end

	def destroy
	  session[:user_id] = nil 
	  redirect_to access_login_path
	end

end
