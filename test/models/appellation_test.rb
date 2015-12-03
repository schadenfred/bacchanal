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

  Given(:appellation) { FactoryGirl.create(:appellation) }
  Given(:winery) { FactoryGirl.create(:winery) }
  Given(:address) { winery.addresses.create(FactoryGirl.attributes_for(:address)) }
  
  describe "#add_to_appellation(address)" do

    Given { appellation.include_address(address) }
    Then { address.appellations.must_include appellation }
    
    describe "remove_address" do 

      Given { appellation.remove_address(address) }
      Then { address.appellations.wont_include appellation }
      And { appellation.addresses.wont_include address }
    end

    describe "dependent destroy" do 

      Given { appellation.destroy }
      Then { address.addresses_appellables.size.must_equal 0}
    end
  end
end