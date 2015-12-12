FactoryGirl.define do
  
  factory :address do
  
    line_1 "281 41st Street"
    line_2 "Suite #33"
    city "Oakland"
    state "CA"
    zip "94611"
    country "US"
    phone "(555) 555-1212"
    email "Mylocalpart@mydomain.mytld"
    website "mydomain.mytld"
    
    factory :address_with_appellations do 

      after(:create) do |address|
        
        address.appellations.create(attributes_for(:appellation))
        address.appellations.create(attributes_for(:mendocino_appellation))
        address.appellations.create(attributes_for(:california_appellation))
      end
    end
  end
end
