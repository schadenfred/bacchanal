require "test_helper"

describe Lot do 

  subject { Lot }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:farm_id, :integer)
      must_have_column(:product_id, :integer)
    end  
  end
end