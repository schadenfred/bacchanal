require "test_helper"

describe User do 

  subject { User }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:email)
      must_have_column(:name)
    end

    specify "indexes" do

      must_have_index(:email) 
      must_have_index(:name) 
      must_have_index(:name) 
      must_have_index(:reset_password_token) 
      must_have_index([:invited_by_id, :invited_by_type]) 
    end
  end

  specify "associations" do 

    must_have_many(:articles)
  end
end
