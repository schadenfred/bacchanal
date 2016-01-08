require 'test_helper'

describe "PositionableConcern" do 

  ["Org", "Wine"].each do |positionable_model|

    subject { positionable_model.constantize } 

    specify "associations" do 
      
      must_have_many :positions
    end 
  end
end
