require "test_helper"

describe Article do 

  subject { Article }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:aasm_state)
      must_have_column(:author_id, :integer)
      must_have_column(:content, :text)
      must_have_column(:slug)
      must_have_column(:title)
    end

    specify "indexes" do
      must_have_index(:slug)
    end
  end

  specify "associations" do 

    must_belong_to(:org)
    must_belong_to(:author)
    must_have_many(:comments)
  end

  specify "methods" do 

    assert subject.new.respond_to?(:tag_list)
    assert subject.new.respond_to?(:category_list)
    assert subject.new.respond_to?(:published?)
    assert subject.new.respond_to?(:draft?)
    assert subject.new.respond_to?(:archived?)
  end

  describe "changing state" do 

    Given(:article) { FactoryGirl.create(:article) }
    Then { article.aasm_state.must_equal "draft" }

  end
end
