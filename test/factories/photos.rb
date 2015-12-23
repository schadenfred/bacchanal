FactoryGirl.define do
  
  factory :photo do

    image Rails.root.join("test", "samples", "labels", "wine-label.jpg")
    sequence(:name) { |n| "foto name-#{n}" }
    caption "MyString"
    photographer
  end
end
