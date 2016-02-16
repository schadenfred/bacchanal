require 'test_helper'

describe "CuratableConcern" do

  ["Wine"].each do |curatable_model|

    subject { curatable_model.constantize }

    describe "#{curatable_model.to_s}" do

      specify "associations" do

        must_have_many :curations
        must_have_many :curated_reviews
      end
    end
  end
end
