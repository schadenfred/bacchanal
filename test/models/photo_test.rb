require "test_helper"

describe Photo do 

  subject { Photo }

  describe "db" do 
    
    specify "columns & types" do 

      must_have_column(:caption)
      must_have_column(:image_name)
      must_have_column(:image_uid)
      must_have_column(:name)
    end
  end

  specify "associations" do 

    must_belong_to(:photographable)
  end
end       