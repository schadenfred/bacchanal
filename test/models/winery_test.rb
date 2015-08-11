require "test_helper"

describe Winery do

  subject { Winery }

  describe "associations" do 

    specify "has many" do 
      
      must_have_many(:wines)
    end
  end
end