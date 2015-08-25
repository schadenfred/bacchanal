namespace 'db:development:create' do 

  task wineries: :environment do 

    Faker::Bloocher.wineries[1..@wineries.to_i].each do |winery_name|
      small_notice("winery: #{winery_name}")
      Winery.create(
        name: winery_name, 
        mission: Faker::Stoked.sentence,
        history: Faker::Stoked.paragraphs(3)
      )
    end
  end
end