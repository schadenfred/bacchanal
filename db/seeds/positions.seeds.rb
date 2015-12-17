after :users, :wineries, :orgs do 
  bacchanal = Org.find_by(name: "Bacchan.al")
  bacchanaliens = [ 
    { 
      name: "fred schoeneman", 
      title: "Proprietor",
      description: "Skier. Programmer. Writer. Wineslayer."
    },
    {
      name: "heather schoeneman",
      title: "quality control",
      description: "I'm Fred's Mom, which makes me pretty awesome. Kidding. Not really. I'm awesome. And better looking than your Mom, too."
    },

    {
      name: "kurt schoeneman",
      title: "Fred's Dad.",
      description: "It takes a lot of cheap bear to make good winegrapes. That's the magic right there."
    }
  ]



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
      user_id: User.find_by(name: user[:name]).id,
      title: user[:title],
      description: user[:description],
      tenure_start:  Date.today - 3.months
    )
    position.save
  end
end

