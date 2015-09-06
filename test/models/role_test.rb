require "test_helper"

describe Role do 

  subject { Role }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:name)
      must_have_column(:resource_id, :integer)
      must_have_column(:resource_type)
    end

    specify "indexes" do 

      must_have_index(:name) 
      must_have_index([:name, :resource_type, :resource_id]) 
    end
  end

  Given(:user) { FactoryGirl.create(:user) }
  Given(:org) { FactoryGirl.create(:org) }

  describe "add global role to a user" do 

    Given { user.add_role :admin }
    Then  { user.has_role?(:admin).must_equal true }
  end  

  describe "role queries" do 

    Given { user.add_role :cool_role, org }
    
    describe "after adding role" do 

      Then  { user.has_role?(:cool_role, org).must_equal true }
      And   { user.has_role?(:cool_role).must_equal false }
      And   { user.has_role?(:cool_role, :any).must_equal true }
      And   { User.with_role(:cool_role).must_include user }
    end
    
    describe "after removing role" do 

      When  { user.remove_role :cool_role, org }
      Then  { user.has_role?(:cool_role, org).must_equal false }
      Then  { user.has_role?(:cool_role).must_equal false }
      Then  { user.has_role?(:cool_role, :any).must_equal false }
    end
  end
end