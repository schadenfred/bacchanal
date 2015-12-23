FactoryGirl.define do

  factory :attachment do
  
    attachment_uid "MyString"
    attachment_name "techsheet.pdf"
    sequence(:name) { |n| "techsheet-#{n}" }
    summary "MyString"
  end
end
