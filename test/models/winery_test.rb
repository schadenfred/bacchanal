require "test_helper"

describe Winery do

  subject { Winery }

  describe "associations" do 

    specify "has many" do 
      
      must_have_many(:wines)
    end
  end

  describe "attributes" do 

    specify do
      must_respond_to(:name)
    end
  end
end