class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.update(user_params)
    # @user.save
    # binding.pry
    redirect_to edit_user_path(current_user)
  end


  private 

  def user_params
    params.require(:user).permit(:imr_name, :name, :introduction, :email)
  end
end
