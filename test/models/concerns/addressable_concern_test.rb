require 'test_helper'

describe "AddressableConcern" do 

  ["Org", "User"].each do |addressable_model|

    subject { addressable_model.constantize.new }  
    
    describe "#{addressable_model.to_s}" do
      
      specify "" do 
        assert subject.respond_to? :default_address 
        assert subject.respond_to? :mailing_address
        assert subject.respond_to? :fax
        assert subject.respond_to? :phone
        assert subject.respond_to? :mailing_address
      end

      specify "email" do 
        assert subject.respond_to? :email
      end
    end
  end

  Given(:user) { FactoryGirl.create(:user_with_address) }
  # Then { user.addresses.first.wont_equal nil }
end
