require "test_helper"

describe AddressesAppellable do 

  subject { AddressesAppellable }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:appellation_id, :integer)
      must_have_column(:address_id, :integer)
    end

    specify "indexes" do 
      must_have_index([:address_id, :appellation_id])
    end
  end

  specify "associations" do 

    must_belong_to(:address)
    must_belong_to(:appellation)
  end
end