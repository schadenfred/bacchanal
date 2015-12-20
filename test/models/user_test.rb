require "test_helper"

describe User do 

  subject { User }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:avatar_id, :integer)
      must_have_column(:email)
      must_have_column(:name)
    end

    specify "indexes" do

      must_have_index(:email) 
      must_have_index(:name) 
      must_have_index(:reset_password_token) 
      must_have_index([:invited_by_id, :invited_by_type]) 
    end
  end

  specify "associations" do 

    must_have_many(:articles)
    must_have_many(:identities)
    must_have_many(:positions)
    must_have_many(:photographed)
    must_have_many(:reviews)

    must_have_one(:avatar)
  end

  specify "methods" do 

    subject.new.respond_to?(:articles).must_equal true
    subject.new.respond_to?(:avatar).must_equal true
  end
end
