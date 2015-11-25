FactoryGirl.define do
  factory :org do
    name "MyString"
    type ""
    slug "MyString"
    properties ""

    # factory :org_with_galleries do
    #   after(:create) do |instance| 
    #     create_list(:gallery, 5, galleriable: instance) 
    #   end
    # end
  end
end
