# require "test_helper"

# class CompetitionsControllerTest < ActionController::TestCase
#   def competition
#     @competition ||= competitions :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:competitions)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("Competition.count") do
#       post :create, competition: {  }
#     end

#     assert_redirected_to competition_path(assigns(:competition))
#   end

#   def test_show
#     get :show, id: competition
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: competition
#     assert_response :success
#   end

#   def test_update
#     put :update, id: competition, competition: {  }
#     assert_redirected_to competition_path(assigns(:competition))
#   end

#   def test_destroy
#     assert_difference("Competition.count", -1) do
#       delete :destroy, id: competition
#     end

#     assert_redirected_to competitions_path
#   end
# end
