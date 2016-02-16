require "test_helper"

describe Wish do

  subject { Wish }

  describe "db" do

    specify "columns & types" do

      must_have_column(:product_id, :integer)
      must_have_column(:quantity, :integer)
      must_have_column(:user_id, :integer)
    end

    specify "indexes" do

      must_have_index([:user_id, :product_id])
    end
  end

  specify "associatons" do

    must_belong_to :user
    must_belong_to :product
  end
end
