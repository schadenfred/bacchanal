require "test_helper"

describe WishesController do

  Given(:user)        { create(:user) }
  Given(:wine)        { create(:wine) }
  Given(:wish_attrs)  { attributes_for(:wish, product_id: wine.id ) }

  Given { sign_in user }

  describe "#create" do

    Given(:make_request) { post wishes_url, params: { wish: wish_attrs } }

    Then { assert_difference( "Wish.count" ) { make_request } }
  end

  describe "#update" do

  end
end

#   def test_create
#     assert_difference("Wish.count") do
#       post :create, wish: { product_id: wish.product_id, quantity: wish.quantity, user_id: wish.user_id }
#     end

#   end

#   def test_show
#     get :show, id: wish
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: wish
#     assert_response :success
#   end

#   def test_update
#     put :update, id: wish, wish: { product_id: wish.product_id, quantity: wish.quantity, user_id: wish.user_id }
#     assert_redirected_to wish_path(assigns(:wish))
#   end

#   def test_destroy
#     assert_difference("Wish.count", -1) do
#       delete :destroy, id: wish
#     end

#     assert_redirected_to wishes_path
#   end
# end
