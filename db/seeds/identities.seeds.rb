after :users, :wineries, :vineyards do 

  users = User.where.not(name: ["fred schoeneman", "guy pacurar"])
  orgs = Org.where.not(name: ["bacchan.al", "Fathers & Daughters cellars"])

  identifiables = users + orgs

  providers = %w[facebook twitter github pinterest linkedin]

  identifiables.each do |identifiable|
    3.times do |n|
      identifiable.identities.create!(
        provider: providers.sample,
        link: "https://www.facebook.com/groups/426557460761015/"
      )
    end
  end
end