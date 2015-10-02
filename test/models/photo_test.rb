require "test_helper"

describe Photo do 

  subject { Photo }

  describe "db" do 
    
    specify "columns & types" do 

      must_have_column(:caption)
      must_have_column(:image_name)
      must_have_column(:image_uid)
      must_have_column(:name)
      must_have_column(:photographable_id, :integer)
      must_have_column(:photographable_type)
      must_have_column(:photographer_id, :integer)
    end
  end

  specify "associations" do 

    must_belong_to(:photographable)
    must_belong_to(:photographer)
  end

  describe "validations" do 

    When(:photo) { FactoryGirl.build(:photo, photographer_id: nil) }
    Then { photo.valid?.wont_equal true }
    And  { photo.errors.messages[:photographer].must_equal ["can't be blank"] }
  end
end       