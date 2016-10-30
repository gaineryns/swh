class AccessController < ApplicationController

layout 'signin'

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]


  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username])
      if found_user
        authorize_user = found_user.authenticate(params[:password])
      end
    end

    if authorize_user

      session[:user_id] = authorize_user.id
      flash[:notice] = "You are now logged in."
      redirect_to(root)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'logged out'
    redirect_to(access_login_path)
  end
end
