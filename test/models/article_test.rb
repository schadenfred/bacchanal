require "test_helper"

describe Article do 

  subject { Article }

  specify "associations" do 

    must_belong_to(:producer)
    must_have_many(:comments)
  end
end
