require "test_helper"

describe Article do 

  subject { Article }

  specify "associations" do 

    must_belong_to(:org)
    must_have_many(:comments)
  end
end
