require 'test_helper'

describe ArticlePolicy do 
  
  Given(:user)            { FactoryGirl.create(:user) }
  Given(:article)         { FactoryGirl.create(:article, author_id: user.id) }
  Given(:policy)          { ArticlePolicy.new(user, article) }
  Given(:fellow_author)   { FactoryGirl.create(:user) }
  
  context "when current user is author" do
    
    context "and article is " do 

      context "and article is unpublished" do 
      
        Then { assert policy.show? }
      end
    end

    context "and article is when published" do 

      Given { article.publish! }
      Then  { assert policy.show? 
              assert policy.update?
              assert policy.destroy?
              assert policy.publish?
              assert policy.archive? 
      }
    end 

    context "when archived" do 

      Given { article.archive! }
      Then  { assert policy.show? }
    end
  end

  context "user is not author" do 

    Given(:policy) { ArticlePolicy.new(fellow_author, article) }
    
    context "when unpublished" do 

      # Then { 
      #   refute policy.show? 
      #   refute policy.update?
      #   refute policy.edit? 
      #   refute policy.publish? 
      #   refute policy.archive? 
      #   refute policy.destroy? 
      # }
    end

    context "when published" do 
    
      Given { article.publish! }
      Then  { assert policy.show? }

    end

    context "when archived" do 

      # Given { article.archive! }
      # Then  { skiprefute policy.show? }
    end
  end
end  
