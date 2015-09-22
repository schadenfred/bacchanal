
    # tester_roles = Role.all.pluck(:name)

    testers = [
      "fred schoeneman",
      "alisa mathewson",
      "greg spanel",
      "melinda marks",
      "sarah schoeneman"
    ]

    

    testers.each do |fullname|
      
      # tester_roles.each do |tester_role|
        # small_notice("user: #{tester_role} account for #{fullname}")
        first = fullname.split.first
        last_initial = fullname.split.last.chars.first
        last = fullname.split.last
        test_domain = "@bacchan.al"
        # if tester_role.nil?
        #   email = first + "." + last_initial + test_domain
        # else
          # email = first + "." + last_initial + "." + tester_role.downcase + test_domain
        # end
        email = first + "." + last + test_domain
        user = User.create( 
          name: fullname, # + tester_role,
          email: email,
          password: "password",
          bio: Faker::Stoked.paragraphs(3)
        )
        user.invite!
        user.accept_invitation!
        user.confirm
        # user.add_role tester_role.to_sym
    # end
    end
    
    # small_notice("generic users")
    # (@users.to_i - (testers.count * tester_roles.count)).times do |n|
    (@users.to_i - (testers.count)).times do |n|
      name = Faker::Stoked.celebroty 
      email = Faker::Internet.email
      password  = "password"
      user = User.new(name: name,
                      :email => email,
                      :password => password,
                      bio: Faker::Stoked.bio)  
      # user.skip_confirmation!
      user.save!

      
      # user.confirm!
    end

    
