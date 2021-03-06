after :users do

  bacchanal = Org.create!(
    name: "Bacchan.al",
    blog_title: "Odds, Ends",
    mission: "Bacchan.al helps small farmers and food producers tell their authentic stories.",
    history: Faker::Stoked.paragraphs( 3 ) )

  gallery = bacchanal.galleries.create!(
    name: "default" )

  user = User.create!(
    name: "fred schoeneman",
    email: "fred.schoeneman@bacchan.al",
    password: "password",
    bio: Faker::Stoked.paragraphs(3)
  )
  user.confirm

  typewriter_pics = Dir[File.expand_path('test/samples/bacchanal/*.jpg')]

  typewriter_pics.each do |pic|

    photo = gallery.photos.create(
      photographer_id: user.id,
      image: File.new(pic),
      caption: Faker::Stoked.thing,
      name: Faker::Stoked.thing,
      slides_attributes: [
        {
          gallery_id: gallery.id,
          call_to_action: Faker::Stoked.thing,
          bullet_big: "bullet big",
          bullet_small: "bullet small"
        }
      ]
    )
  end

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
      description: "I like being a grandpa, old cars, the Oakland A's, The San Francisco Giants, The Golden State Warriors, and Grocery Outlet, in that order."
    }
  ]

  bacchanaliens.each do |user|

    position = bacchanal.positions.new(
      user_id: User.find_by(name: user[:name]).id,
      title: user[:title],
      description: user[:description],
      tenure_start:  Date.today - 3.months
    )
    position.save
  end

  identities_hash = {
    "User" => {
      "fred schoeneman" => [
        {
          provider: "facebook",
          link: "https://www.facebook.com/fredtasticvoyager"
        }, {
          provider: "twitter",
          link: "https://twitter.com/fred_schoeneman"
        }, {
          provider: "pinterest",
          link: "https://www.pinterest.com/fredschoeneman/"
        }, {
          provider: "linkedin",
          link: "https://www.linkedin.com/in/fred-schoeneman-3202b84"
        }, {
          provider: "github",
          link: "https://github.com/schadenfred"
        }
      ]

    },
    "Org" => {

      "Bacchan.al" => [
        {
          provider: "facebook",
          link: "https://www.facebook.com/groups/426557460761015/"
        }
      ]
    }
  }

  identities_hash.each do |klass, values|
    values.each do |key, values|
      values.each do |identity|

        identifiable = klass.constantize.find_by(name: key.to_s)
        x = identifiable.identities.new(
          provider: identity[:provider],
          link: identity[:link]
        )
        x.save
      end
    end
  end
end


CreatePlanService.new.call
puts 'CREATED PLANS'
