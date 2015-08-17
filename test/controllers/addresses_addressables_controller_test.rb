# require "test_helper"

# class AddressesAddressablesControllerTest < ActionController::TestCase
#   def addresses_addressable
#     @addresses_addressable ||= addresses_addressables :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:addresses_addressables)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("AddressesAddressable.count") do
#       post :create, addresses_addressable: { address_function: addresses_addressable.address_function, address_id: addresses_addressable.address_id, addressable_id: addresses_addressable.addressable_id, addressable_type: addresses_addressable.addressable_type, name: addresses_addressable.name }
#     end

#     assert_redirected_to addresses_addressable_path(assigns(:addresses_addressable))
#   end

#   def test_show
#     get :show, id: addresses_addressable
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: addresses_addressable
#     assert_response :success
#   end

#   def test_update
#     put :update, id: addresses_addressable, addresses_addressable: { address_function: addresses_addressable.address_function, address_id: addresses_addressable.address_id, addressable_id: addresses_addressable.addressable_id, addressable_type: addresses_addressable.addressable_type, name: addresses_addressable.name }
#     assert_redirected_to addresses_addressable_path(assigns(:addresses_addressable))
#   end

#   def test_destroy
#     assert_difference("AddressesAddressable.count", -1) do
#       delete :destroy, id: addresses_addressable
#     end

#     assert_redirected_to addresses_addressables_path
#   end
# end
