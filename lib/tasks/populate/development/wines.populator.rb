satisfy_dependencies(["wineries"])
winery = Winery.first

10.times do |i|
  winery.wines.new(
    name: Faker::Bloocher.vineyard + " " + Faker::Bloocher.varietal,
    price: rand(20..100)
    )
  winery.save
end

