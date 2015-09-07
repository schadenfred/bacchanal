require 'test_helper'

describe ApplicationPolicy do 

  subject { ArticlePolicy.new(user, article) }

  let(:article) { FactoryGirl.create(:article) }

  context "for a visitor" do 

    Given(:user) { nil }

    it "must pass" do 
      byebug
      article
    end
    # Then { permit(:show).must_equal true }
  end
end