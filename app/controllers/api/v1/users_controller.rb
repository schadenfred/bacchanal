class Api::V1::UsersController < ApplicationController
  respond_to :json

  def index
    respond_with User.all
  end

  def show
    respond_with user
  end

  # def create
  #   respond_with :api, :v1, User.create(ser_params)
  # end

  def update
    respond_with user.update(user)
  end

  def destroy
    respond_with user.destroy
  end

  private

  def user
    User.find(params[:id])
  end

  def User_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :status, :notes)
  end

end