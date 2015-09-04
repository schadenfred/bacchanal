module ApplicationHelper

  def poly_path(article)
    polymorphic_path([article.org, article])
  end

  def markdown(text)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    markdown.render(text)
  end 


  def flavor_choices
    [
      "spicy" => { 
        "spicy" => [
          "licorice/anise" 
        ] 
      }
    ]
  end
end

#     },
#     {
#       "fruity" {
#         "citrus" {
#           "grapefruit",
#           "lemon"
#         },
#         "berry" {
#           "blackberry",
#           "raspberry",
#           "strawberry",
#           "black currant (cassis)"
#         },
#         "tree fruit" {
#           "cherry",
#           "apricot",
#           "peach",
#           "apple"
#         },
#         "tropical fruit" {
#           "lychee",
#           "pineapple",
#           "melon",
#           "banana"
#         },
#         "fruit (dried/cooked)" {
#           "strawberry (jam)",
#           "raisin",
#           "prune",
#           "fig"
#         },
#         "other" {
#           "artificial fruit",
#           "methyl anthranilate (foxy)"
#         }
#       },
#       {
#         "herbaceous/vegetative" {
#           "fresh" {
#             "cut green grass",
#             "bell pepper",
#             "eucalyptus",
#             "mint"
#           },
          
#           "canned/cooked" {
#             "green bean",
#             "asparagus",
#             "green olive",
#             "black olive",
#             "artichoke"
#           },
          
#           {
#             "dried" {
#               "hay/straw",
#               "tea"
#             }
#           }
#         },
        
#         { 
#           "nutty" {
#             "nutty" {
#               "walnut",
#               "hazelnut",
#               "almond"
#             }
#           }
#         },

#         {
#           "caramel" {
#             "caramel" {
#               "honey",
#               "butterscotch",
#               "butter",
#               "soy sauce",
#               "chocolate",
#               "molasses"
#             }
#           }
#         },

#         {
#           "woody" {
#             "burned" {
#               "smokey",
#               "burnt toast",
#               "coffee"
#             },
#             "phenolic" {
#               "medicinal",
#               "bacon"
#             },
#             "resinous" {
#               "tobacco",
#               "oak",
#               "cedar",
#               "vanilla"
#             }
#           }
#         },
#         {
#           "earthy" {
#             "moldy" {
#               "moldy cork"
#             },
#             "earthy" {
#               "mushroom",
#               "dusty"
#             }
#           }
#         },
#         {
#           "chemical" {
#             "pungent" {
#               "acetic acid (vinegar)",
#               "ethyl acetate (nail polish remover)",
#               "sulfur dioxide"
#             },
#             "sulfur" {
#               "wet dog / wet wool",
#               "burnt match",
#               "cooked cabbage",
#               "skunk",
#               "garlic",
#               "natural gas (mercaptan)",
#               "hydrogen sulfide (rotten eggs)",
#               "rubber"
#             },
#             "petroleum" {
#               "diesel",
#               "kerosene",
#               "plastic", 
#               "tar"
#             }
#           }
#         }

#       }
#     } 
#   end
# end
