FactoryGirl.define do

  factory :block do

    sequence(:name) { |n| "block-2a-#{n}" }
    parent_vineyard
    varietal "gewurztraminer"
  end
end
