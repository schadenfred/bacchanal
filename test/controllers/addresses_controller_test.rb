# require "test_helper"

# class AddressesControllerTest < ActionController::TestCase
#   def address
#     @address ||= addresses :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:addresses)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("Address.count") do
#       post :create, address: { city: address.city, country: address.country, email: address.email, line_1: address.line_1, line_2: address.line_2, phone: address.phone, state: address.state, website: address.website, zip: address.zip }
#     end

#     assert_redirected_to address_path(assigns(:address))
#   end

#   def test_show
#     get :show, id: address
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: address
#     assert_response :success
#   end

#   def test_update
#     put :update, id: address, address: { city: address.city, country: address.country, email: address.email, line_1: address.line_1, line_2: address.line_2, phone: address.phone, state: address.state, website: address.website, zip: address.zip }
#     assert_redirected_to address_path(assigns(:address))
#   end

#   def test_destroy
#     assert_difference("Address.count", -1) do
#       delete :destroy, id: address
#     end

#     assert_redirected_to addresses_path
#   end
# end
