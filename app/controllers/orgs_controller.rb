class OrgsController < ApplicationController
  before_action :set_org, only: [:show, :edit, :update, :destroy]

  def index 
    render json: Org.terms_for(params[:term])
    # @orgs = Org.all
    # render json: @orgs.map(&:name), root: false
  end

  def show
  end

  def new
    @org = Org.new
  end

  # GET /orgs/1/edit
  def edit
  end

  # POST /orgs
  def create
    @org = Org.new(org_params)

    if @org.save
      redirect_to @org, notice: 'Org was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orgs/1
  def update
    if @org.update(org_params)
      redirect_to @org, notice: 'Org was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orgs/1
  def destroy
    @org.destroy
    redirect_to orgs_url, notice: 'Org was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org
      @org = Org.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def org_params
      params.require(:org).permit(:name, :type, :slug, :properties)
    end
end
