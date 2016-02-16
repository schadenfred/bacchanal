after :wines do

  wine = Wine.first
  wine.attachments.create!(
    attachment: File.new(Dir[File.expand_path('test/samples/attachments/*')].sample),
    summary: Faker::Stoked.sentence,
    name: "tech sheet" )
end

