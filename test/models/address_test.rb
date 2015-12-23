require "test_helper"

describe Address do

  subject { Address }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:city)
      must_have_column(:country)
      must_have_column(:email)
      must_have_column(:line_1)
      must_have_column(:line_2)
      must_have_column(:phone)
      must_have_column(:state)
      must_have_column(:website)
      must_have_column(:zip)
    end

    specify "indexes" do

      must_have_index(:zip) 
      must_have_index([:city, :state]) 
      must_have_index([:latitude, :longitude]) 
    end
  end

  specify "associations" do 

    must_have_many :addresses_addressables
    must_have_many :addressables
    must_have_many :addresses_appellables
    must_have_many :appellations
  end

  specify "geocodable_address" do 

    address = FactoryGirl.build_stubbed(:address)
    address.full_street_address.must_equal "281 41st Street Suite #33, Oakland, CA, US"
  end  
end