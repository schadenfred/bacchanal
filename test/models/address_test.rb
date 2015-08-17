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
    end
  end

  specify "associations" do 

    must_have_many :addresses_addressables
    must_have_many :addressables
    # must_have_many :producers
  end 
end