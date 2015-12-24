after :users, :wines do

  users = User.all
  wine = Wine.first

  users.each do |user|
    user.reviews.create(
      wine_id: wine.id,
      content: Faker::Bloocher.review,
      rating: rand(83..93),

    )
  end
end
