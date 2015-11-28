require "test_helper"

describe Org do

  subject { Org }

  describe "db" do 

    specify "columns & types" do 
      
      must_have_column(:blog_title)
      must_have_column(:logo_id, :integer)
      must_have_column(:name)
      must_have_column(:slug)
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
    must_have_many :identities
    must_have_many :positions
    must_have_many :photos
  end
end