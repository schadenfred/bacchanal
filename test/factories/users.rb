FactoryGirl.define do 

  sequence(:email) do |n| 
    "user#{n}@test.com" 
  end

  factory :user, aliases: [:confirmed_user, :winemaker, :farmer, 
    :reviewer, :owner, :activator, :author, :photographer, :commenter] do
 
    sequence(:name)       {|n| "username#{n}" }
    email
    password              "password"
    confirmed_at Time.now

    factory :admin do
      after(:create) { |user| user.add_role(:admin) } 
    end

    factory :user_with_address do 
      
      addresses_addressable
    end
  end
end