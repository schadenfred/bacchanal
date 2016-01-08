class PositionsController < ApplicationController

  def create

    @position = Position.create!(position_params)
    byebug
    respond_to do |format|
      
      format.html { redirect_to root_url }
      format.js
    end

  end

  private  

    def set_position
      @position = Position.find(params[:id])
    end
    
    def position_params
      params.require(:position).permit! #escription, :org_id, :tenure_start, :tenure_end)
    end

end
