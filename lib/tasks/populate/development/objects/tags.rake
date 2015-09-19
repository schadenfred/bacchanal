# namespace 'db:development:create' do 

#   task taggings: :environment do 

#     satisfy_dependencies(["articles"])
#     articles = Article.first(5)
#     articles.each do |article|
#       # article.tag_list.add("pinot noir", "semillon")
#       article.tag_list = "pinot noir, clowns, existentialism"
#       article.category_list = "winemaking, vineyards"
#       article.save
#     end
#   end
# end