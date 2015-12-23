FactoryGirl.define do

  factory :gallery do

    sequence(:name) { |n| "gallery-name-#{n}" }

    properties "MyString"

    trait :default do 
      name "default"
    end
    
    factory :default_gallery do 
      name "default"
    end
  end
end
