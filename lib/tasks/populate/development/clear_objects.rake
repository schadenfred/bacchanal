namespace 'db:development' do 

  desc "Remove objects from development db"
  task clear_objects: :environment do 

    puts "#{green("==>")} resetting development database"

    unless Rails.env.production?

      puts "#{green("  -->")} dropping test & development db's"
      Rake::Task['db:drop'].invoke
      puts "#{green("  -->")} creating development db"
      Rake::Task['db:create'].invoke
      puts "#{green("  -->")} loading schema into development db"
      Rake::Task['db:schema:load'].invoke
    end
  end
end