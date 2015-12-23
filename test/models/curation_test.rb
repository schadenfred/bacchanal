require "test_helper"

describe Curation do 

  subject { Curation }
  
  describe "db" do 

    specify "columns & types" do 

      must_have_column(:curatable_type)
      must_have_column(:curatable_id, :integer)
      must_have_column(:review_id, :integer)
    end

    specify "indexes" do 

      must_have_index([:curatable_id, :curatable_type])
    end
  end

  specify "associations" do 

    must_belong_to(:curatable)
    must_belong_to(:review)
  end
end