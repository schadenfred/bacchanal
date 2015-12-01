require "test_helper"

describe Gallery do

  subject { Gallery }

  describe "db" do 

    specify "columns & types" do 
      
      must_have_column(:name)
      must_have_column(:galleriable_type)
      must_have_column(:galleriable_id, :integer)
      must_have_column(:properties, :json)

    end

    specify "store_accessor" do 

      must_respond_to(:name)
    end

    specify "indexes" do
      
      must_have_index([:galleriable_id, :galleriable_type]) 
    end
  end

  specify "associations" do 
    
    must_have_many :slides
    must_have_many :photos
  end

  describe "validations" do 

    Given(:gallery) { FactoryGirl.build(:gallery) }
    
    describe "presence" do 

      describe "of parent org" do 

        Given { gallery.save }
        Then  { gallery.update(galleriable_id: nil).must_equal false }
      end

      describe "of name" do 

        Given { gallery.save }
        Then  { gallery.update(name: nil).must_equal false }
      end
    end
  end
end
