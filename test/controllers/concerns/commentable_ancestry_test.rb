# require 'test_helper'

# class DummyCommentsController < ApplicationController
#   include CommentableConcern

#   def create
#     render :text => "foo"
#   end
# end

# describe DummyCommentsController do

#   setup do
#     Rails.application.routes.draw do
#       post '/comments(.:format)' => "dummy_comments#create"
#     end
#   end
  
#   after do 
#     Rails.application.reload_routes!

#   end
#   Given(:user)      { FactoryGirl.create(:user) }
#   Given(:article)   { FactoryGirl.create(:article) }
#   Given(:winery_1)  { FactoryGirl.create(:winery) }
#   Given(:winery_2)  { FactoryGirl.create(:winery) }
#   Given(:comment)   { FactoryGirl.create(:comment) }
#   Given(:referer)   { "http://localhost:3000/wineries/#{winery_1.slug}" }
#   Given(:article_referer)   { "http://localhost:3000/wineries/#{winery_1.slug}/articles/#{article.slug}" }

#   Given { sign_in user }
  
#   Given(:make_request) { 
#     post :create, comment: { 
#       commentable_id: winery_1.id, 
#       commentable_type: winery_1.class, 
#       content: comment.content } } 
  
#   describe "must identify" do
    
#     describe "parent resource" do
  
#       Given { @request.env['HTTP_REFERER'] = referer } 
#       When  { make_request }
#       # Then  { assert_not_nil assigns :commentable }
#     end

#     describe "child resource" do

#       Given { @request.env['HTTP_REFERER'] = article_referer } 
#       When  { make_request }

#       # Then  { assert_not_nil assigns :commentable }
#     end
#   end
# end
