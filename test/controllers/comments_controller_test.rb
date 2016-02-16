require "test_helper"

describe CommentsController do

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:article) { FactoryGirl.create(:article) }
  Given(:winery)  { FactoryGirl.create(:winery) }
  Given(:comment) { FactoryGirl.create(:comment) }
  Given(:referer) { "http://localhost:3000/wineries/#{winery.slug}" }

  Given { sign_in user }

  describe "#new" do

    Given { get :new, comment: { parent_id: comment.id} }
    Then  { assert_not_nil assigns(:comment) }
  end

  describe "#create" do

    Given { @request.env['HTTP_REFERER'] = referer }

    Given(:make_request) {
      post :create, comment: {
        commentable_id: comment.commentable_id,
        commentable_type: comment.commentable_type,
        content: comment.content
      }
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