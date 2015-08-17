require "test_helper"

class PhotosControllerTest < ActionController::TestCase
  def photo
    @photo ||= photos :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Photo.count") do
      post :create, photo: { caption: photo.caption, image_name: photo.image_name, image_uid: photo.image_uid, name: photo.name }
    end

    assert_redirected_to photo_path(assigns(:photo))
  end

  def test_show
    get :show, id: photo
    assert_response :success
  end

  def test_edit
    get :edit, id: photo
    assert_response :success
  end

  def test_update
    put :update, id: photo, photo: { caption: photo.caption, image_name: photo.image_name, image_uid: photo.image_uid, name: photo.name }
    assert_redirected_to photo_path(assigns(:photo))
  end

  def test_destroy
    assert_difference("Photo.count", -1) do
      delete :destroy, id: photo
    end

    assert_redirected_to photos_path
  end
end
