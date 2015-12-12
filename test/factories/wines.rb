FactoryGirl.define do
  sequence(:vintage) do |n| 
    "200#{n}" 
  end

  factory :wine do
    name "pinot noir"
    vintage
    winery

    factory :wine_with_lots do
      transient do
        lots_count 5
      end

      after(:create) do |wine, evaluator|
        create_list(:wine_grape_lot, evaluator.lots_count, wine: wine)
      end
    end
  end
end
