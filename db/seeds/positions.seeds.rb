after :users, :wineries, :orgs do 
  bacchanal = Org.find_by(name: "Bacchan.al")
  bacchanaliens = ["fred schoeneman", "heather schoeneman"]

  winery = Winery.find_by(slug: "fathers-daughters-cellars")
  winery_users = ["sarah schoeneman", "kurt schoeneman", "guy pacurar"]

  winery_users.each do |user|

    winery.positions.create(
      user_id: User.find_by(name: user).id,
      title: Faker::Stoked.job,
      description: Faker::Stoked.sentence,
      tenure_start:  Date.today - 3.months
    )
  end

  bacchanaliens.each do |user|

    position = bacchanal.positions.new(
      user_id: User.find_by(name: user).id,
      title: Faker::Stoked.job,
      description: Faker::Stoked.sentence,
      tenure_start:  Date.today - 3.months
    )
    position.save
  end
end

