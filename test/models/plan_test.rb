require "test_helper"

describe Plan do

  subject { Plan }

  describe "db" do

    specify "columns & types" do

      must_have_column(:name)
      must_have_column(:stripe_id)
      must_have_column(:interval)
      must_have_column(:amount, :integer)
    end
  end

  specify "associations" do

    must_have_many(:users)
  end
end