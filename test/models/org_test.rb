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
    must_have_many :addresses
    must_have_many :comments
    must_have_many :positions
  end

  specify "scopes" do 
    
  end 
end