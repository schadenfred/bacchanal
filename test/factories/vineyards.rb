FactoryGirl.define do

  factory :vineyard, aliases: [:parent_vineyard] do


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

    factory :vineyard_with_blocks do 
      transient do 
        blocks_count 5
      end

      after(:create) do |vineyard, evaluator|
        create_list(:block, evaluator.blocks_count, parent_vineyard: vineyard)
      end
    end
  end
end
