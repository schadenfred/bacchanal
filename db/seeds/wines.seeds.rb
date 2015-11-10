winery = Winery.first
10.times do |i|
    
  wine = winery.wines.new(
    name: Faker::Bloocher.vineyard + " " + Faker::Bloocher.varietal,
    price: rand(20..100)
    )
      wine.save!
  # wine.photos.new(image: File.new("app/assets/images/fanddcellars/pinot.jpg"))
  # wi/ne.save


end

