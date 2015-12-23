FactoryGirl.define do
  factory :addresses_addressable do
    address
    association :addressable, factory: :user
    sequence(:name) { |n| "address_name#{n}" }

    address_function 1

    factory :vineyard_addresses_addressable do
      association :addressable, factory: :vineyard
    end
  end
end
