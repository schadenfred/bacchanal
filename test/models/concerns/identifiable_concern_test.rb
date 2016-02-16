require 'test_helper'

describe "identifiableConcern" do

  ["Org", "User"].each do |identifiable_model|

    subject { identifiable_model.constantize }

    describe "#{identifiable_model.to_s}" do

      specify "associations" do
        must_have_many :identities
      end
    end
  end
end
