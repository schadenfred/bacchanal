require 'test_helper'

describe "CommentableConcern" do

  ["Article", "Org"].each do |commentable_model|

    subject { commentable_model.constantize }

    specify "associations" do

      must_have_many :comments
    end
  end
end
