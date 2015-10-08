require "test_helper"

describe CommentsController do 

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:article) { FactoryGirl.create(:article) }
  Given(:winery)  { FactoryGirl.create(:winery) }
  Given(:comment) { FactoryGirl.create(:comment) }
  Given(:referer) { "http://localhost:3000/wineries/#{winery.slug}" }

  describe "#create" do 

    Given { sign_in user }
    Given { @request.env['HTTP_REFERER'] = referer }

    Given(:make_request) { 
      # set_referer
      post :create, comment: { 
        commentable_id: comment.commentable_id, 
        commentable_type: comment.commentable_type, 
        content: comment.content 
      }#, { 'HTTP_REFERER' => 'http://foo.com'}
    } 

    When { make_request }

    # Then { request.referer.must_equal "blah"}
    # Then do 
    #   assert_difference("Comment.count") do
    #     post :create, comment: { commentable_id: comment.commentable_id, commentable_type: comment.commentable_type, content: comment.content }
    #   end
    # end

    # assert_redirected_to comment_path(assigns(:comment))
  end
end

# class CommentsControllerTest < ActionController::TestCase
#   def comment
#     @comment ||= comments :one
#   end

#   def test_index
#     get :index
#     assert_response :success
#     assert_not_nil assigns(:comments)
#   end

#   def test_new
#     get :new
#     assert_response :success
#   end

#   def test_create
#     assert_difference("Comment.count") do
#       post :create, comment: { commentable_id: comment.commentable_id, commentable_type: comment.commentable_type, content: comment.content }
#     end

#     assert_redirected_to comment_path(assigns(:comment))
#   end

#   def test_show
#     get :show, id: comment
#     assert_response :success
#   end

#   def test_edit
#     get :edit, id: comment
#     assert_response :success
#   end

#   def test_update
#     put :update, id: comment, comment: { commentable_id: comment.commentable_id, commentable_type: comment.commentable_type, content: comment.content }
#     assert_redirected_to comment_path(assigns(:comment))
#   end

#   def test_destroy
#     assert_difference("Comment.count", -1) do
#       delete :destroy, id: comment
#     end

#     assert_redirected_to comments_path
#   end
# end
