require "test_helper"

describe Comment do 

  subject { Comment }

   describe "db" do 

    specify "columns & types" do 

      must_have_column(:ancestry)
      must_have_column(:content)
      must_have_column(:commentable_id, :integer)
      must_have_column(:commentable_type)
      must_have_column(:commenter_id, :integer)
    end

    specify "indexes" do

      must_have_index(:ancestry) 
    end
  end 

  specify "associations" do

    must_belong_to :commentable
    must_belong_to :commenter
  end
end