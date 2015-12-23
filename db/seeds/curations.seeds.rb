after :reviews, :wines do 

  reviews = Review.all 
  wine = Wine.first

  5.times do 
    wine.curations.create!(review: reviews.sample)
  end
end