identities = %w[twitter facebook linkedin dribbble pinterest tumblr instagram]
User.all.each do |user|
  3.times do |n|
    user.identities.create(FactoryGirl.attributes_for("#{identities.sample}_identity".to_sym))
  end
end 
