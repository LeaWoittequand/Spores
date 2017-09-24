class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def destroy
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

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :picture)
  end
end
