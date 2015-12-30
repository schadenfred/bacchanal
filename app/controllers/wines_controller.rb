class WinesController < ApplicationController

  before_action :set_wine, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
    @wines = Wine.all
  end

  def show

    if current_user
      @wish = current_user.wishes.find_by(product_id: @wine.id) || current_user.wishes.new
    end
  end

  def new
    @wine = Wine.new
  end

  def edit
  end

  def create
    @wine = Wine.new(wine_params)

    if @wine.save
      redirect_to @wine, notice: 'Wine was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wine.update(wine_params)
      redirect_to @wine, notice: 'Wine was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wine.destroy
    redirect_to wines_url, notice: 'Wine was successfully destroyed.'
  end

  private


    def set_wine
      @wine = Wine.friendly.find(params[:id])
      @org = @wine.winery
    end

    def wine_params
      params[:wine]
    end
end
