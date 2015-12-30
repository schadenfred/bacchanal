require "test_helper"

describe Wishlist do 

  subject { Wishlist }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:user_id, :integer)
      must_have_column(:product_id, :integer)
      must_have_column(:quantity, :integer)
    end

    specify "indexes" do 

      must_have_index([:user_id, :product_id])
    end
  end
end