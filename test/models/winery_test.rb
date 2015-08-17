require "test_helper"

describe Winery do

  subject { Winery }

  specify "associations" do 

    must_have_many(:wines)
    must_have_many(:products)
  end

  describe "attributes" do 

    subject { Winery.new }

    specify do
      must_respond_to(:properties)
    end
  end
end