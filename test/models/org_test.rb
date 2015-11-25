require "test_helper"

describe Org do

  subject { Org }

  describe "db" do 

    specify "columns & types" do 
      
      must_have_column(:blog_title, :string)
      must_have_column(:logo_id, :integer)
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

    must_have_many :addresses
    must_have_many :articles
    must_have_many :comments
    must_have_many :galleries
    must_have_many :identities
    must_have_many :positions
    must_have_many :photos
  end

  describe "email" do

    Given(:user) { FactoryGirl.create(:user) } 
    Given(:address_attrs) { FactoryGirl.attributes_for(:address) } 
    Given(:user_with_address) { user.addreses.create(address_attrs) }
  end

  Given(:default_gallery)     { FactoryGirl.create(:default_gallery) }
  Given(:org) { default_gallery.galleriable }
  
  describe ":default_gallery" do 

    Then { default_gallery.name.must_equal "default" }
    And  { org.default_gallery.must_equal default_gallery }
  end

  describe ":gallery(name)" do 

    Then { org.gallery("default").must_equal default_gallery }
  end
end