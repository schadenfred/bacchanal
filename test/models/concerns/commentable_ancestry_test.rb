require 'test_helper'

class DummyCommentsController < ApplicationController
  include CommentableAncestry

  def create
    render :text => "foo"
  end
end

describe DummyCommentsController do

  setup do
    Rails.application.routes.draw do
      post '/comments(.:format)' => "dummy_comments#create"
    end
  end

  teardown do 
    Rails.application.reload_routes!

  end

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:article) { FactoryGirl.create(:article) }
  Given(:winery)  { FactoryGirl.create(:winery) }
  Given(:comment) { FactoryGirl.create(:comment) }
  Given(:referer) { "http://localhost:3000/wineries/#{winery.slug}" }

  Given { sign_in user }
  Given { @request.env['HTTP_REFERER'] = referer } 
  
  describe "must identify parent resource" do
  
    Given(:make_request) { 
      post :create, comment: { 
        commentable_id: comment.commentable_id, 
        commentable_type: comment.commentable_type, 
        content: comment.content 
      }
    } 
    When { make_request }

    # Then { request.referer.must_equal "blah"}
    # Then { CommentableAncestry.commentable_resource(referer).must_equal "blah"}
  end
end
