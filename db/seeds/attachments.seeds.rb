# after :wines, :galleries, :slides, :photos do 

#   winery = Winery.find_by(slug: "fathers-daughters-cellars")
#   wine = winery.wines.first

#   attachments = Dir[File.expand_path('test/samples/attachments/*.pdf')]

#   wine.attachments.create!(
#     attachment: File.new(attachments.sample),
#     summary: Faker::Stoked.sentence,
#     name: "tech sheet"
#   )
# end
