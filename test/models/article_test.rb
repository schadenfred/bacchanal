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

  describe "validations" do 

    Given(:winery_1)          { FactoryGirl.create(:winery) }
    Given(:winery_2)          { FactoryGirl.create(:winery) }
    Given(:article_attrs)     { FactoryGirl.attributes_for(:article) }
    Given(:existing_article)  { 
            FactoryGirl.create(:article, org_id: winery_1.id) }
    Given(:new_article) {
            FactoryGirl.create(:article, org_id: winery_1.id) } 
    
    describe "presence" do

      describe "of org" do 

        When { existing_article.update(author_id: nil) }
        Then { existing_article.valid?.wont_equal true }
      end

      describe "of author" do

        When { existing_article.update(org_id: nil) }
        Then { existing_article.valid?.wont_equal true }
      end 
    end 

    describe "uniqueness" do 

      describe "of title" do

        Given(:new_article) {
            FactoryGirl.build(:article, org_id: winery_1.id) } 
    
        describe "single org" do 

          When { existing_article }
          Then { new_article.valid?.must_equal false }
          And  { new_article.errors.messages[:title].first.must_match /taken/ }
        end 

        describe "single org" do 
          
          Given(:new_article) {
            FactoryGirl.build(:article, org_id: winery_2.id) } 
          When { existing_article } 
          Then { new_article.valid?.must_equal true } 
        end
      end 
    end
  end

  let(:instance ) { subject.new }

  specify "methods" do 

    assert instance.respond_to?(:tag_list)
    assert instance.respond_to?(:category_list)
    assert instance.respond_to?(:published?)
    assert instance.respond_to?(:draft?)
    assert instance.respond_to?(:archived?)
  end

  describe "changing state" do 

    Given(:article) { FactoryGirl.create(:article) }
    Then { article.aasm_state.must_equal "draft" }
  end
end
