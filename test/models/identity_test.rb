require "test_helper"

describe Identity do 

  subject { Identity }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:user_id, :integer)
      must_have_column(:provider)
      must_have_column(:uid)
    end

    specify "indexes" do

      must_have_index(:user_id)
    end
  end

  specify "associations" do 

    must_belong_to(:user)

  end
end