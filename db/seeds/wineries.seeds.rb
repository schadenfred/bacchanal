after :users do 

  winery_names = Faker::Bloocher.wineries[0..4]
  winery_names.each do |name|

    winery = Winery.new(
      name: name,
      blog_title: Faker::Stoked.saying,
      mission: Faker::Stoked.sentence,
      welcome_statement: Faker::Stoked.paragraphs(3)
    )
    winery.save!

  end
end