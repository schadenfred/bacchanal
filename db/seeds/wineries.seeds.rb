after :users do 

  6.times do |n|

    winery = Winery.create!(
      name: Faker::Bloocher.winery,
      blog_title: Faker::Stoked.saying,
      mission: Faker::Stoked.sentence,
      welcome_statement: Faker::Stoked.paragraphs(3)
    )
  end
end