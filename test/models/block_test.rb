require "test_helper"

describe Block do 

  subject { Block }

  specify "associations" do 

    must_belong_to(:parent_vineyard)
    must_have_many(:blocks)
  end
end