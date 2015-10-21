require "test_helper"

describe Org do

  subject { Org }

  describe "db" do 

    specify "columns & types" do 
      
      must_have_column(:blog_title, :string)
      must_have_column(:name, :string)
      must_have_column(:slug, :string)
      must_have_column(:properties, :hstore)
    end

    specify "indexes" do
      
      must_have_index(:name) 
      must_have_index(:slug) 
    end
  end 

  specify "associations" do 

    must_have_many :articles
    must_have_many :comments
    must_have_many :positions
    must_have_many :addresses
  end

  specify "scopes" do 
    
  end

  describe "email" do

    Given(:user) { FactoryGirl.create(:user) } 
    Given(:address_attrs) { FactoryGirl.attributes_for(:address) } 
    Given(:user_with_address) { user.addreses.create(address_attrs) }
  end
end