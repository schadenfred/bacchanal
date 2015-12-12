FactoryGirl.define do

  factory :winery do
    name
    
    factory :winery_with_wines do
      transient do
        wines_count 5
      end

      after(:create) do |winery, evaluator|
        create_list(:wine, evaluator.wines_count, winery: winery)
      end
    end
    
    factory :winery_with_appellations do

      after(:create) do |winery|
        winery.addresses_addressables.create(address: FactoryGirl.create(:address_with_appellations) ) 
      end
    end
  end
end
