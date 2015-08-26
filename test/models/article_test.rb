require "test_helper"

describe Article do 

  subject { Article }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:author_id, :integer)
      must_have_column(:content, :text)
      must_have_column(:slug)
      must_have_column(:title)
    end

    specify "indexes" do

    end
  end

  specify "associations" do 

    must_belong_to(:org)
    must_belong_to(:author)
    must_have_many(:comments)
  end
end
