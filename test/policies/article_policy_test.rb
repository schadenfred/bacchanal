require 'test_helper'

describe ApplicationPolicy do 

  subject { ArticlePolicy.new(user, article) }

  let(:article) { FactoryGirl.create(:article) }

  
  context "for a visitor" do 

    let(:user)    { nil }
    let(:article) { FactoryGirl.create(:article) }

    context "as owner" do 

      # Given { user.add_role :author, article } 
      # Then  { 
      # byebug
      #  subject.show?.must_equal true }
      Given(:policy) { ArticlePolicy.new( user, article ) }
      Then { subject.policy.public_send(:update).must_equal true}
    end

    context "as author" do 

      # Given { user.add_role :author, article } 
      # Then  { subject.update?.must_equal true }
    end
  end
end
# class ArticlePolicyTest < ActiveSupport::TestCase

#   def test_scope
#   end

#   def test_show
#   end

#   def test_create
#   end

#   def test_update
#   end

#   def test_destroy
#   end
# end

# require 'test_helper'

# describe ApplicationPolicy do 

#   subject { ArticlePolicy.new(user, article) }

#   let(:article) { FactoryGirl.create(:article) }

#   context "for a visitor" do 

#     Given(:user) { nil }

#     it "must pass" do 
#       byebug
#       article
#     end
#     # Then { permit(:show).must_equal true }
#   end
# end