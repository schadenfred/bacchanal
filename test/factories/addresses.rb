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
  end
end
