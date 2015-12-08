FactoryGirl.define do
  sequence(:vintage) do |n| 
    "200#{n}" 
  end

  factory :wine do
    name "pinot noir"
    vintage
  end
end
