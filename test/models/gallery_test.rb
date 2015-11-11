require "test_helper"

describe Gallery do

  subject { Gallery }

  describe "db" do 

    specify "columns & types" do 
      
      must_have_column(:name, :string)
      must_have_column(:org_id, :integer)
      must_have_column(:properties, :json)
    end

    specify "store_accessor" do 

      must_respond_to(:name)
    end

    specify "indexes" do
      
      must_have_index(:org_id) 
    end
  end

  specify "associations" do 
    
    must_have_many :slides
  end

  describe "validations" do 

    Given(:gallery) { FactoryGirl.build(:gallery) }
    
    describe "presence" do 

      describe "of parent org" do 

        Given { gallery.save }
        Then  { gallery.update(org_id: nil).must_equal false }
      end

      describe "of name" do 

        Given { gallery.save }
        Then  { gallery.update(name: nil).must_equal false }
      end
    end
  end
end
