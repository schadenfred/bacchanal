require "test_helper"

describe Winery do

  subject { Winery }

  specify "associations" do 

    must_have_many(:wines)
  end

  describe "attributes" do 

    subject { Winery.new }

    specify "" do
      must_respond_to(:properties)
      must_respond_to(:owned_taggings)
    end
  end

  describe "vintages" do 

    Given(:winery) { FactoryGirl.create(:winery_with_wines)}

    describe "must list one vintage for all wines in it" do

      Given(:existing_vintage) { winery.wines.first.vintage }
      Given { winery.wines.last.update_attributes(vintage: existing_vintage ) }
      Then  { winery.vintages.size.must_equal 4 }
      And   { winery.vintages.must_include existing_vintage }
    end

    describe ":wines_in_vintage(vintage)" do 
      Given(:wine) { winery.wines.first }
      Then { winery.wines_in_vintage(wine.vintage).must_include wine }
    end

    describe "must list one varietal for all wines containing it" do

      Given(:existing_vintage) { winery.wines.first.vintage }
      Given { winery.wines.last.update_attributes(vintage: existing_vintage ) }
      Then  { winery.vintages.size.must_equal 4 }
      And   { winery.vintages.must_include existing_vintage }
    end

    describe ":wines_in_vintage(vintage)" do 
      Given(:wine) { winery.wines.first }
      Then { winery.wines_in_vintage(wine.vintage).must_include wine }
    end
  end
end