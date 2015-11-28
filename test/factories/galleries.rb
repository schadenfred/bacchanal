FactoryGirl.define do

  factory :gallery do

    name "MyString"
    properties "MyString"

    trait :default do 
      name "default"
    end
    
    factory :default_gallery do 
      name "default"
    end
  end
end
