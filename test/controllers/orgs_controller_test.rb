# require "test_helper"

# class OrgsControllerTest < ActionController::TestCase
#   def org
#     @org ||= orgs :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:orgs)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("Org.count") do
#       post :create, org: { name: org.name, properties: org.properties, slug: org.slug, type: org.type }
#     end

#     assert_redirected_to org_path(assigns(:org))
#   end

#   def test_show
#     get :show, id: org
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: org
#     assert_response :success
#   end

#   def test_update
#     put :update, id: org, org: { name: org.name, properties: org.properties, slug: org.slug, type: org.type }
#     assert_redirected_to org_path(assigns(:org))
#   end

#   def test_destroy
#     assert_difference("Org.count", -1) do
#       delete :destroy, id: org
#     end

#     assert_redirected_to orgs_path
#   end
# end
