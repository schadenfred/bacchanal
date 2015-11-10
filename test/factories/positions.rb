FactoryGirl.define do
  factory :position do
    user
    org
    positionable_type "MyString"
    title "MyString"
    description "MyString"
  end
end
