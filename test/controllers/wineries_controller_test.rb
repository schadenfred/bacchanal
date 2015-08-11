require "test_helper"

class WineriesControllerTest < ActionController::TestCase
  def winery
    @winery ||= wineries :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:wineries)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference("Winery.count") do
      post :create, winery: {  }
    end

    assert_redirected_to winery_path(assigns(:winery))
  end

  def test_show
    get :show, id: winery
    assert_response :success
  end

  def test_edit
    get :edit, id: winery
    assert_response :success
  end

  def test_update
    put :update, id: winery, winery: {  }
    assert_redirected_to winery_path(assigns(:winery))
  end

  def test_destroy
    assert_difference("Winery.count", -1) do
      delete :destroy, id: winery
    end

    assert_redirected_to wineries_path
  end
end
