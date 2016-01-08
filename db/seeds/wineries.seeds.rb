after :users do 

  winery_names = Faker::Bloocher.wineries[0..5]
  winery_names.each do |winery_name|
    winery = Winery.create!(
      name: winery_name,
      blog_title: Faker::Stoked.saying,
      mission: Faker::Stoked.sentence,
      welcome_statement: Faker::Stoked.paragraphs(3)
    )
  end
end