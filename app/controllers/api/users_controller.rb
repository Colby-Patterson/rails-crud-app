class Api::UsersController < ApplicationController
  before_action :set_user, only: [:update]
  def index
    render json: User.all
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if(user.save)
      render json: user
    else
      render json: {errors: item.errors.full_messages}, status 422
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {errors: item.errors.full_messages}, status 422
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :age)
  end
end
