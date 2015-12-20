require "test_helper"

describe Winery do

  subject { Winery }

  specify "associations" do 

    must_have_many(:wines)
    must_have_many(:reviews)
  end

  describe "store accessors" do 

    subject { Winery.new }

    specify "" do
      must_respond_to(:properties)
      must_respond_to(:owned_taggings)
    end
  end

  Given(:winery) { FactoryGirl.create(:winery_with_wines)}
  Given(:appellation) { create(:appellation, name: "napa" ) }
  Given(:address) { create(:address_with_appellations) }

  describe "vintage methods" do 
  
    Given { address.addresses_appellables.create(appellation: appellation) }
    Given { winery.addresses_addressables.create(address: address) }

    describe ":vintages must return unique vintages" do

      Given(:existing_vintage) { winery.wines.first.vintage }
      When { winery.wines.last.update_attributes(vintage: existing_vintage ) }
      Then { winery.vintages.size.must_equal 4 }
      And { winery.vintages.must_include existing_vintage }
    end

    describe ":wines_in_vintage(vintage) must return wines in a vintage" do 
     
      Then { winery.wines_in_vintage(wine.vintage).must_include wine }
    end
  end

  Given(:appellation) { address.appellations.first }
  Given(:vineyard) { create(:vineyard) }
  Given(:winery) { create(:winery_with_wines) }
  Given(:wine) { winery.wines.first }

  
  Given { vineyard.addresses_addressables.create(address: address) }
  Given { wine.wine_grape_lots.create( vineyard: vineyard ) }
  
  describe "appellation methods" do
  
    describe ":wines_appellations" do 
      
      Then { winery.wines_appellations.must_include appellation }
    end 
  end
  
  describe "varietal methods" do 

    Then { winery.varietals.must_include "chardonnay"}
  end
end