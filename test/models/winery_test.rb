require "test_helper"

describe Winery do

  subject { Winery }

  specify "associations" do 

    must_have_many(:wines)
  end

  describe "attributes" do 

    subject { Winery.new }

    specify "" do
      must_respond_to(:properties)
      must_respond_to(:owned_taggings)
    end
  end
end