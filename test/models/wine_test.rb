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
    must_have_many :wine_grape_lots
    must_have_many :vineyards
  end

  specify "indexes" do 

    must_have_index :properties
  end

  Given(:wine) { FactoryGirl.create(:wine) }
  Given(:vineyard) { FactoryGirl.create(:vineyard, varietal: "pinot noir") }
  Given(:address) { FactoryGirl.create(:address_with_appellations ) }
  Given(:appellation) { address.appellations.first }
  
  Given { vineyard.addresses_addressables.create(address: address ) }
  Given { wine.wine_grape_lots.create(vineyard: vineyard ) }
  
  describe ":appellations" do 

    Then { wine.appellations.must_include appellation } 
  end

  describe ":varietals" do 

    Then { wine.varietals.must_include "pinot noir" }
  end
end