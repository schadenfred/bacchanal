require "test_helper"

describe AddressesAddressable do

  describe "class methods" do 

    subject { AddressesAddressable }

    describe "db" do 

      specify "columns & types" do 

        must_have_column(:address_id, :integer)
        must_have_column(:addressable_id, :integer)
        must_have_column(:addressable_type)
        must_have_column(:name)
        must_have_column(:address_function, :integer)
      end

      specify "indexes" do

        must_have_index(:address_id) 
        must_have_index(:addressable_id) 
      end
    end

    specify "associations" do 

      must_belong_to :address
      must_belong_to :addressable
    end
  end

  describe "instance methods" do 
    
    subject { AddressesAddressable.new }

    %w[shipping billing primary].each do |role|

      specify ":#{role}" do 

        subject.send(role + "!")
        subject.address_function.must_equal role
      end
    end 
  end
end