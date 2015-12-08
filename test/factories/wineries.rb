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
  end
end
