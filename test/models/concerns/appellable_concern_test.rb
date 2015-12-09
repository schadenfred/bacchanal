require 'test_helper'

describe "AppellableConcern" do 

  ["winery", "vineyard"].each do |appellable_model|

    subject { appellable_model.capitalize.constantize } 

    specify "associations" do 
      
      must_have_many(:addresses_appellables)
      must_have_many(:appellations)
    end 
    
    Given(:appellable) { FactoryGirl.create(appellable_model.to_sym) }
    Given(:address) { appellable.addresses.create(attributes_for(:address) ) }
    Given(:appellation) { create(:appellation) }

    describe "#appellations" do

      Given { appellation.include_address( address ) }  

      describe "should include winery" do 

        Given(:appellables) { appellable.class.name.pluralize.downcase }

        Then  { appellation.send(appellables).must_include appellable }
      end

      describe "winery appellations should include appellation" do 

        Then  { appellable.appellations.must_include appellation }
      end
    end
  end
end
