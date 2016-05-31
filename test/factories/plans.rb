FactoryGirl.define do

  factory :plan do
    name "Bacchanalien"
    stripe_id "bacchanalien"
    interval "month"
    amount 2000
  end
end
