class AddressesAddressablesController < ApplicationController
  before_action :set_addresses_addressable, only: [:show, :edit, :update, :destroy]

  # GET /addresses_addressables
  def index
    @addresses_addressables = AddressesAddressable.all
  end

  # GET /addresses_addressables/1
  def show
  end

  # GET /addresses_addressables/new
  def new
    @addresses_addressable = AddressesAddressable.new
  end

  # GET /addresses_addressables/1/edit
  def edit
  end

  # POST /addresses_addressables
  def create
    @addresses_addressable = AddressesAddressable.new(addresses_addressable_params)

    if @addresses_addressable.save
      redirect_to @addresses_addressable, notice: 'Addresses addressable was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /addresses_addressables/1
  def update
    if @addresses_addressable.update(addresses_addressable_params)
      redirect_to @addresses_addressable, notice: 'Addresses addressable was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /addresses_addressables/1
  def destroy
    @addresses_addressable.destroy
    redirect_to addresses_addressables_url, notice: 'Addresses addressable was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addresses_addressable
      @addresses_addressable = AddressesAddressable.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def addresses_addressable_params
      params.require(:addresses_addressable).permit(:address_id, :addressable_id, :addressable_type, :name, :address_function)
    end
end
