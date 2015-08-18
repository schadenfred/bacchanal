require "test_helper"

describe Comment do 

  subject { Comment }

  specify "associations" do

    must_belong_to :article
    # must_belong_to :commentable
  end
end