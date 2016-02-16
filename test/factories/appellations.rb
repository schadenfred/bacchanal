FactoryGirl.define do

  factory :appellation do

    name "anderson valley"
    description "MyString"

    factory :mendocino_appellation do

      name "mendocino"
    end

    factory :california_appellation do

      name "california"
    end
  end
end
