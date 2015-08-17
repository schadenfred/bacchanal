# require "test_helper"

# class WinesControllerTest < ActionController::TestCase
#   def wine
#     @wine ||= wines :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:wines)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("Wine.count") do
#       post :create, wine: {  }
#     end

#     assert_redirected_to wine_path(assigns(:wine))
#   end

#   def test_show
#     get :show, id: wine
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: wine
#     assert_response :success
#   end

#   def test_update
#     put :update, id: wine, wine: {  }
#     assert_redirected_to wine_path(assigns(:wine))
#   end

#   def test_destroy
#     assert_difference("Wine.count", -1) do
#       delete :destroy, id: wine
#     end

#     assert_redirected_to wines_path
#   end
# end
