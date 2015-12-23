FactoryGirl.define do
  factory :org do
    sequence(:name) { |n| "organization-name-#{n}" }
    type ""
    slug "MyString"
    properties ""
  end
end
