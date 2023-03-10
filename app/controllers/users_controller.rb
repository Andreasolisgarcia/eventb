class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(current_user.id)
  end
  
  def update
      @user= User.find(current_user.id)
      if @user.update(user_params)
        flash[:success] = "You got it! Your profile is updated!"
        redirect_to user_path(@user)
      end
  end
  
  private 
  def user_params
      params.require(:user).permit(:first_name, :last_name, :description)
  end
end
