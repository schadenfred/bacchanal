module WineriesHelper

  include ActsAsTaggableOn::TagsHelper

  def sortable_classes(array)
    (array - [nil]).map! {|item| item.parameterize }.join(" ")
  end

  def flavor_choices
    { "spicy" => {
        "spicy" => [
          "licorice/anise",
          "black pepper",
          "clove"
        ]
      },
      "fruity" => {
        "citrus" => [
          "grapefruit",
          "lemon"
        ],
        "berry" => [
          "blackberry",
          "raspberry",
          "strawberry",
          "black currant (cassis)"
        ],
        "tree fruit" => [
          "cherry",
          "apricot",
          "peach",
          "apple"
        ],

        "tropical fruit" => [
          "lychee",
          "pineapple",
          "melon",
          "banana"
        ],

        "fruit (dried/cooked)" => [
          "strawberry (jam)",
          "raisin",
          "prune",
          "fig"
        ],
        "other" => [
          "artificial fruit",
          "methyl anthranilate (foxy)"
        ]
      },

      "herbaceous/vegetative" => {
        "fresh" => [
          "cut green grass",
          "bell pepper",
          "eucalyptus",
          "mint"
        ],
        "canned/cooked" => [
          "green bean",
          "asparagus",
          "green olive",
          "black olive",
          "artichoke"
        ],
        "dried" => [
          "hay/straw",
          "tea"
        ]
      },

      "nutty" => {
        "nutty" => [
          "walnut",
          "hazelnut",
          "almond"
        ]
      },
      "caramel" => {
        "caramel" => [
          "honey",
          "butterscotch",
          "butter",
          "soy sauce",
          "chocolate",
          "molasses"
        ]
      },
      "woody" => {
        "burned" => [
          "smokey",
          "burnt toast",
          "coffee"
        ],
        "phenolic" => [
          "medicinal",
          "bacon"
        ],
        "resinous" => [
          "tobacco",
          "oak",
          "cedar",
          "vanilla"
        ]
      },
      "earthy" => {
        "moldy" => [
          "moldy cork"
        ],
        "earthy" => [
          "mushroom",
          "dusty"
        ]
      },
      "chemical" => {
        "pungent" => [
          "acetic acid (vinegar)",
          "ethyl acetate (nail polish remover)",
          "sulfur dioxide"
        ],
        "sulfur" => [
          "wet dog / wet wool",
          "burnt match",
          "cooked cabbage",
          "skunk",
          "garlic",
          "natural gas (mercaptan)",
          "hydrogen sulfide (rotten eggs)",
          "rubber"
        ],
        "petroleum" => [
          "diesel",
          "kerosene",
          "plastic",
          "tar"
        ]
      },
      "oxidized" => {
        "oxidized" => [
          "sherry"
        ]
      },
      "microbiological" => {
        "yeasty" => [
          "leesy",
          "baker's yeast"
        ],
        "lactic" => [
          "yogurt",
          "sweaty",
          "sauerkraut"
        ],
        "other" => [
          "mousey",
          "horsey"
        ]
      },
      "floral" => {
        "floral" => [
          "geranium",
          "violet",
          "rose",
          "linalool (earl grey tea)",
          "orange blossom"
        ]
      }
    }
  end
end
#       }
#     }
#   end
# end

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
