class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def edit
  end

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
