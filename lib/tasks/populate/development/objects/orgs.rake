namespace 'db:development:create' do 

  task orgs: :environment do 

    satisfy_dependencies(["user"])

    bacchanal = Org.create!(
      name: "Ferrington",
      blog_title: "Odds, Ends",
      mission: "Bacchan.al helps small farmers and food producers who care to get paid more than those who don't."
    )
    bacchanal.positions.create!(
      user_id: User.where(email: "fred.schoeneman@bacchan.al").first.id,
      title: "Founder", 
      description: "If it sucks, it's on me."
    )
    bacchanal.positions.create(
      user_id: User.where(email: "alisa.mathewson@bacchan.al").first.id,
      title: "Intern", 
      description: "Pretty much exactly like the intern in season one of Parks & Rec."
    )
  end
end