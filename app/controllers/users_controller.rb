class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url
      else render 'new'
    end
  end
  def index
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:second_name)
  end
end
