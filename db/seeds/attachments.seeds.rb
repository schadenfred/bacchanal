after :wines do 

  winery = Winery.find_by(slug: "fathers-daughters-cellars")
  wine = winery.wines.first

  files = Dir[File.expand_path('test/samples/attachments/*.pdf')]

  wine.attachments.create!(
    attachment: File.new(files.sample),
    summary: Faker::Stoked.sentence,
    name: "tech sheet"
  )
end
