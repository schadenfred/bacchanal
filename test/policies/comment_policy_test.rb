require 'test_helper'

describe CommentPolicy do 

  Given(:commenter)       { create(:admin) }
  # Given(:comment_replier) { create(:user) }
  Given(:comment)   { create(:comment, commenter_id: commenter.id) }
  # Given(:policy)    { CommentPolicy.new(commenter, comment) }
  
  describe "collection actions" do 

    %w[new index create].each do |action|

      Then { assert_permit commenter, :comment, action.to_sym }
    end
  end

  describe "member actions" do
    
    %w[edit update destroy].each do |action|

      context "user is not commenter" do 

        Then { assert_permit commenter, comment, action }
      end
    end
  end 

  describe "scope" do 

    # Then { 
    #   assert_permit commenter, :comment, :create }

  end
end