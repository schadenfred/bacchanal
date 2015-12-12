require 'test_helper'

describe "AppellableConcern" do 

  Given(:address) { create(:address_with_appellations ) }
  Given(:appellation) { address.appellations.first }
  
  ["winery", "vineyard"].each do |appellable_model|

    subject { appellable_model.capitalize.constantize } 

    specify "associations" do 
      
      must_have_many(:addresses_appellables)
      must_have_many(:appellations)
    end 
    
    Given(:appellable) { FactoryGirl.create(appellable_model.to_sym) }
    Given { appellable.addresses_addressables.create(address: address) }

    describe "#{appellable_model}" do

      describe "appellations must include appellation" do 

        Given(:expected) { ["mendocino", "california", "anderson valley"] }
        Then { assert expected & appellable.appellation_names == expected }
      end

      describe ":appellation_names" do

        Then { appellable.appellations.pluck(:name).must_include "mendocino" }
        And { appellable.appellations.pluck(:name).must_include "california" }
        And { appellable.appellations.pluck(:name).must_include "anderson valley" }
      end 
    end
  end

  describe "for wines" do 
    
    subject { Wine }

    specify "associations" do 
      
      must_have_many(:appellations)
    end 

    Given(:wine) { FactoryGirl.create(:wine) }
    Given(:vineyard) { FactoryGirl.create(:vineyard)}
    Given(:address) { FactoryGirl.create(:address_with_appellations) }
  
    Given { vineyard.addresses_addressables.create(address: address) }
    Given { wine.wine_grape_lots.create(vineyard: vineyard) }

    Then { wine.appellations.must_include address.appellations.first }
  end
end
