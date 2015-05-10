FactoryGirl.define do 

  sequence(:email) do |n| 
    "user#{n}@test.com" 
  end

  factory :user, aliases: [:confirmed_user, :winemaker, :farmer, 
    :reviewer, :owner, :activator] do
 
    email
    # sequence(:name)       {|n| "username#{n}" }
    password              "password"
    # confirmed_at Time.now

    factory :admin do 
      # after(:create) { |user| user.add_role(:admin) } 
    end

    factory :user_with_showcase do 
      # after(:create) { |user| user.showcases.create(showcase)}
    end

    factory :unconfirmed_user, parent: :user do 
      # confirmed_at nil
    end
  end
end