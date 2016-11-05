class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
      @users = User.all
  end

  def create 
    @user = User.new(user_params)
    if @user.save 
      redirect_to access_login_path
      flash[:success ] = "OK pour la création du compte"
    else 
      redirect_to access_login_path
      flash[:success ] = "Il y a une erreur dans les informations renseignées"
    end 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = "Profile updated"
        redirect_to edit_user_path(current_user)
      else
        render 'edit'
      end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "OK pour la suppresion"
    redirect_to users_show_path
  end 

private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :role, :password, :password_confirmation)

end
