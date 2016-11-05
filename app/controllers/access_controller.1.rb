class AccessController < ApplicationController

layout 'signin'

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]


  def login
  end

  def menu

  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        author_user = found_user.authenticate(params[:password])
      end
    end

    if author_user
      session[:user_id] = 'rien'
      flash[:notice] = "You are now logged in."
      redirect_to(root_path)
    else
      flash.now[:notice] = "Invalid username/password."
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'logged out'
    redirect_to(access_login_path)
  end
end
