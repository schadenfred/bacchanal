FactoryGirl.define do
  factory :addresses_addressable do
    address
    association :addressable, factory: :user
    name "MyString"
    address_function 1
  end

end
