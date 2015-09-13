class WineriesController < ApplicationController
  before_action :set_winery, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @wineries = Winery.all
  end

  def show
  end

  def new
    @winery = Winery.new
  end

  def edit
  end

  def create
    @winery = Winery.new(winery_params)
    if @winery.save
      redirect_to @winery, notice: 'Winery was successfully created.'
    else
      render :new
    end
  end

  def update
    if @winery.update(winery_params)
      redirect_to @winery, notice: 'Winery was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @winery.destroy
    redirect_to wineries_url, notice: 'Winery was successfully destroyed.'
  end

  private

    def set_winery
      @winery = Winery.friendly.find(params[:id])
    end

    def winery_params
      params.require(:winery).permit!
    end
end
