require "test_helper"

describe PhotosController do

  Given(:user)        { FactoryGirl.create(:user) }
  Given(:org)         { FactoryGirl.create(:org) }
  Given(:winery)      { FactoryGirl.create(:winery) }
  Given(:photo_attrs) { FactoryGirl.attributes_for(:photo) }
  Given(:make_request) { post photos_url, params: { photo: photo_attrs }, env: { "HTTP_REFERER" => "http://test.com/wineries/#{winery.slug}/articles"}  }

  context "when authenticated" do

    Given { sign_in user }

    describe "#create without :photographable" do

      Then do
        assert_difference("Photo.count") do
          make_request
        end
        response.status.must_equal 200
      end
      # And { Photo.last.photographable.must_equal nil}
    end

    describe "#create without :photographable" do

      # public :set_photographable

      # Then { set_photographable.must_equal "blah" }



      Given(:winery) { FactoryGirl.create(:winery) }
      Given(:request_path) { "http://test.com/wineries/#{winery.slug}/articles" }
      # Given { @request.env['HTTP_REFERER'] = request_path }
      Then do

        assert_difference("Photo.count") do
          make_request
        end

        response.status.must_equal 200
      end
      And { Photo.last.photographable.slug.must_equal winery.slug }
    end

    context "when not authenticated" do

      Given { sign_out user }
      Given { post photos_url, params: { photo: photo_attrs } }
      Then  { assert_response 302 }
    end

      # it "" do

      #   assert_difference("Photo.count") do
      #     post :create, photo: { caption: attrs[:caption], image_name: attrs[:image_name], image_uid: attrs[:image_uid], name: attrs[:name] }
      #   end

      #   assert_redirected_to photo_path(assigns(:photo))
      # end
  end
end
#   def test_create
#     assert_difference("Photo.count") do
#       post :create, photo: { caption: photo.caption, image_name: photo.image_name, image_uid: photo.image_uid, name: photo.name }
#     end

#     assert_redirected_to photo_path(assigns(:photo))
#   end

#   def test_show
#     get :show, id: photo
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: photo
#     assert_response :success
#   end

#   def test_update
#     put :update, id: photo, photo: { caption: photo.caption, image_name: photo.image_name, image_uid: photo.image_uid, name: photo.name }
#     assert_redirected_to photo_path(assigns(:photo))
#   end

#   def test_destroy
#     assert_difference("Photo.count", -1) do
#       delete :destroy, id: photo
#     end

#     assert_redirected_to photos_path
#   end
# end
