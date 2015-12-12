FactoryGirl.define do

  factory :vineyard do

    name
    varietal "chardonnay"

    factory :vineyard_with_addresses do 

      transient do 
        address_count 2
      end

      after(:create) do |vineyard, evaluator|
        create_list(:vineyard_addresses_addressable, evaluator.address_count, vineyard: vineyard)
      end
    end
  end
end
