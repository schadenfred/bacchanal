class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :set_photographable, only: [:create]

  def index
    @photos = Photo.all
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def edit
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photographable 
      @photo.update(
        photographable_id: @photographable.id, 
        photographable_type: @photographable.class)
    end

    if @photo.save
      render json: { message: "success", fileID: @photo.id }, :status => 200
    else
      render json: { error: @photo.errors.full_messages.join(',')}, :status => 400
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_url, notice: 'Photo was successfully destroyed.'
  end

  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def set_photographable
      path = URI(request.referer).path.split("/")
      klass = path[1].classify.constantize
      id = path[2]
      @photographable = klass.friendly.find(id)
    end

    def photo_params
      params.require(:photo).permit! #(:image, :image_uid, :image_name, :name, :caption)
    end

end
