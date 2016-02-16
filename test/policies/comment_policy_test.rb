require 'test_helper'

describe CommentPolicy do

  Given(:admin)           { create(:admin) }
  Given(:comment_replier) { create(:user) }
  Given(:comment)         { create(:comment) }

  describe "collection actions" do

    %w[new index create].each do |action|

      Then { assert_permit comment.commenter, :comment, action.to_sym }
    end
  end

  describe "member actions" do

    %w[edit update destroy].each do |action|

      context "user is comment commenter" do

        Then { assert_permit comment.commenter, comment, action }
      end

      context "user is not comment commenter" do

        Then { refute_permit comment_replier, comment, action }
      end

      context "user is admin" do

        Then { assert_permit admin, comment, action }
      end
    end
  end

  # describe "scope" do

  #   # Then {
  #   #   assert_permit commenter, :comment, :create }

  # end
end