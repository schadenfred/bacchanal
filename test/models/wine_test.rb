require "test_helper"

describe Wine do

  subject { Wine }

  specify "properties" do 

    assert subject.new.respond_to? :properties
    assert subject.new.respond_to? :vintage
    assert subject.new.respond_to? :bottled_on
    assert subject.new.respond_to? :released_on
  end

  specify "associations" do 

    must_belong_to :winery

    must_have_many :photos
    must_have_many :slides
    must_have_many :galleries
    must_have_many :reviews
    must_have_many :wine_grape_lots
    must_have_many :vineyards
  end

  specify "indexes" do 

    must_have_index :properties
  end

  Given(:wine) { FactoryGirl.create(:wine) }
  Given(:vineyard) { FactoryGirl.create(:vineyard, varietal: "pinot noir") }
  Given(:second_vineyard) { FactoryGirl.create(:vineyard, varietal: "malbec") }
  Given(:third_vineyard) { FactoryGirl.create(:vineyard, varietal: "muscadet")}
  Given(:address) { FactoryGirl.create(:address_with_appellations ) }
  Given(:appellation) { address.appellations.first }
  
  Given { wine.wine_grape_lots.create( [
    { vineyard: vineyard, percentage: 43 }, 
    { vineyard: second_vineyard, percentage: 7 }, 
    { vineyard: third_vineyard, percentage: 40 } ] ) }
  
  describe ":appellations" do 

    Given { vineyard.addresses_addressables.create(address: address ) }
    Then { wine.appellations.must_include appellation } 
  end

  describe ":varietals" do 

    Then { wine.varietals.must_include "pinot noir" }
    And { wine.varietals.must_include "muscadet" }
    And { wine.varietals.must_include "malbec" }
  end

  describe ":composition" do 
    Given(:expected_composition) { [
      { "pinot noir" => 43 }, 
      { "muscadet" => 40 }, 
      { "malbec" => 7 },
      { "unknown" => 10 } ] }
    Then { wine.composition.must_equal expected_composition }
  end

  describe "previous vintages" do 

    Given(:winery) { create(:winery) }
    Given(:wine) { winery.wines.create(name: "Savoy Pinot", vintage: 2015) }
    Given { winery.wines.create(name: "Savoy Pinot", vintage: 2014) }
    Given { winery.wines.create(name: "Savoy Pinot", vintage: 2013) }
    Given { winery.wines.create(name: "Savoy Pinot", vintage: 2012) }

    Then { wine.previous_vintages.size.must_equal 3 }
    And { wine.previous_vintages.wont_include wine }

    Then { wine.varietals.must_include "pinot noir" }
  end
end