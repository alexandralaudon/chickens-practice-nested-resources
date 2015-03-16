class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :password, :password_confirmation, :chicken))
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to the movement! Bock bock!"
      redirect_to safe_places_path
    else
      render :new
    end
  end
end
