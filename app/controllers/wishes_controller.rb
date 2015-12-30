class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  def index
    @wishes = Wish.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wishes }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wish }
    end
  end

  def new
    @wish = Wish.new
  end

  def edit
  end

  def create
    @wish = Wish.new(wish_params)

    respond_to do |format|
      if @wish.save
        format.html { redirect_to @wish.product.producer, notice: 'Wish was successfully created.' }
        format.json { render json: @wish, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @wish.update(wish_params)
        format.html { redirect_to @wish, notice: 'Wish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wish.destroy
    respond_to do |format|
      format.html { redirect_to wishes_url }
      format.json { head :no_content }
    end
  end

  private

    def set_wish
      @wish = Wish.find(params[:id])
    end

    def wish_params
      params.require(:wish).permit(:quantity, :product_id)
    end
end
