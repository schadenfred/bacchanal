FactoryGirl.define do
  sequence(:uid) do |n| 
    "uid#{n}" 
  end

  factory :identity do
    user
    provider "MyString"
    uid
    privacy true

    %w[twitter facebook linkedin dribbble pinterest tumblr instagram].each do |identity|

      factory "#{identity}_identity".to_sym do 
        provider "#{identity}"
      end
    end
  end
end
