require "test_helper"

describe Comment do 

  subject { Comment }

  specify "associations" do

    must_belong_to :commentable
    must_belong_to :commenter
  end
end