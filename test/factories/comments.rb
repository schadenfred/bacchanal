FactoryGirl.define do
  factory :comment do
    content "Democrats I have met while yachting"
    association :commentable, factory: :winery
    commenter
  end
end
