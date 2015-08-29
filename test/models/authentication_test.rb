require "test_helper"

describe Authentication do 

  subject { Authentication }

  describe "db" do

    specify "columns & types" do 

      must_have_column(:provider)
      must_have_column(:uid)
      must_have_column(:user_id, :integer)
    end
  end
end