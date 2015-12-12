require "test_helper"

describe Appellation do 

  subject { Appellation }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:name)
      must_have_column(:description)
    end
  end

  describe "indexes" do 

  end

  specify "associations" do 

    must_have_many :addresses
    must_have_many :addressables
  end

  Given(:address) { create(:address_with_appellations) }
  Given(:appellation) { address.appellations.first}

  describe "include_address(address)" do

    Given { appellation.include_address(address) }
    Then { address.appellations.must_include appellation }
    
    describe "exclude_address(address)" do 

      Given { appellation.exclude_address(address) }
      Then { address.appellations.wont_include appellation }
      And { appellation.addresses.wont_include address }
    end
  end
  
  ["winery", "vineyard"].each do |appellable_model|

    Given(:appellable) { FactoryGirl.create(appellable_model.to_sym) }
    Given(:address) { create(:address_with_appellations ) }
    Given(:appellation) { address.appellations.first }
    Given(:appellables) { appellable.class.name.pluralize.downcase }    
    Given { appellable.addresses_addressables.create(address: address) }
    
    Then  { appellation.send(appellables).must_include appellable }
  end

      #   Given { appellation.include_address( address ) }  

      # describe "should include winery" do 

      #   Given(:appellables) { appellable.class.name.pluralize.downcase }
      #   Then  { appellation.send(appellables).must_include appellable }
      # end
end