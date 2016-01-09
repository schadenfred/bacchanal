class PositionsController < ApplicationController

  before_action :set_user, only: [:create]

  def create

    positionable_tokens = params[:position][:positionable_tokens].split(",")

    positionable_tokens.each do |token|      
      @user.positions.create(position_params.merge(positionable_id: token))
    end

    respond_to do |format|
      
      format.html { redirect_to :back, notice: "positiions updated" }
      format.js
    end

  end

  private  

    def set_position
      @position = Position.find(params[:id])
    end
    
    def position_params
      params.require(:position).permit(:title, :description, :user_id, :positionable_id, :positionable_type)
    end

    def set_user
      @user = User.find(position_params[:user_id])
    end
end
