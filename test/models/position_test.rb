require "test_helper"

describe Position do 

  subject { Position }

  describe "db" do

    specify "columns & types" do 

      must_have_column(:user_id, :integer)
      must_have_column(:positionable_id, :integer)
      must_have_column(:positionable_type)
      must_have_column(:title)
      must_have_column(:description)
      must_have_column(:tenure_start, :date)
      must_have_column(:tenure_end, :date)
    end
  end

  specify "associations" do 

    must_belong_to(:positionable)
    must_belong_to(:user)
  end
end