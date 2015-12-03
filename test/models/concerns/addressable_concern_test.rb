require 'test_helper'

describe "AddressableConcern" do 

  ["Org", "User"].each do |addressable_model|

    subject { addressable_model.constantize } 

    specify "associations" do 
      
      must_have_many :addresses_addressables
      must_have_many :addresses
    end 
    
    describe "#{addressable_model.to_s}" do
      
      subject { addressable_model.constantize.new }
      
      specify "must respond to" do 
        assert subject.respond_to? :default_address 
        assert subject.respond_to? :mailing_address
        assert subject.respond_to? :fax
        assert subject.respond_to? :phone
        assert subject.respond_to? :mailing_address
      end
    end
  end

  Given(:winery) { FactoryGirl.create(:winery) }
  Given(:address) { winery.addresses.create( attributes_for( :address ) ) }
  Given(:appellation) { create(:appellation) }

  describe "#appellations" do

    Given { appellation.include_address( address ) }  

    describe "should include winery" do 

      Then  { appellation.wineries.must_include winery }
    end

    describe "winery appellations should include appellation" do 

      Then  { winery.appellations.must_include appellation }
    end
  end
end
