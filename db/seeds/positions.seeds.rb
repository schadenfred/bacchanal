after :users, :wineries, :orgs do 

  users = User.all
  orgs = Org.where.not(name: ["Bacchan.al"])
  orgs.each do |org|
    org.positions.create(
      user: users.sample,
      title: Faker::Stoked.job,
      description: Faker::Stoked.bio,
      tenure_start: Date.today - 3.months )
  end
end

