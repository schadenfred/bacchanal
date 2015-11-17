hash = {
  "User" => {


    "guy pacurar" => [
      {
        provider: "facebook",
        link: "https://www.facebook.com/fathersanddaughterscellars/?fref=nf"
      }, {
        provider: "linkedin", 
        link: "https://www.linkedin.com/in/guy-pacurar-2993ba14"
      }
    ],

    "fred schoeneman" => [
      {
        provider: "facebook",
        link: "https://www.facebook.com/fredtasticvoyager"
      }, {
        provider: "twitter",
        link: "https://twitter.com/fred_schoeneman"
      }, {
        provider: "pinterest",
        link: "https://www.pinterest.com/fredschoeneman/"
      }, {
        provider: "linkedin",
        link: "https://www.linkedin.com/in/fred-schoeneman-3202b84"
      }, {
        provider: "github",
        link: "https://github.com/schadenfred"  
      }
    ]

  },
  "Org" => {
    "Bacchan.al" => [
      {
        provider: "facebook",
        link: "https://www.facebook.com/groups/426557460761015/"
      }
    ],

    "Fathers & Daughters Cellars" => [
      {
        provider: "facebook",
        link: "https://www.facebook.com/fathersanddaughterscellars"
      }

    ]
  }
}

hash.each do |klass, values|
  values.each do |key, values|
    values.each do |identity|
   
      identifiable = klass.constantize.find_by(name: key.to_s)
      x = identifiable.identities.new(
        provider: identity[:provider],
        link: identity[:link]
      )
      x.save
    end
  end
end
#       ]
#       } => { 
#     "guy pacurar" => [
#       {
#       },
#       {
#       } 
#     ],

#     "fred schoenenan" => [
#       {
#         provider: "facebook",
#         link: "https://www.facebook.com/fredtasticvoyager"
#       }, {
#         provider: "twitter",
#         link: "twitter.com/fred_schoeneman"
#       }, {
#         provider: "pinterest",
#         link: "https://www.pinterest.com/fredschoeneman/"
#       }, {
#         provider: "linkedin",
#         link: "https://www.linkedin.com/in/fred-schoeneman-3202b84"
#       }, {
#         provider: "github",
#         link: "https://github.com/schadenfred"  
#       }
#     ]
#   }, 
#   "Org" => {
#     "Bacchan.al" => [
#       {
#         provider: "facebook",
#         link: "https://www.facebook.com/groups/426557460761015/"
#       }
#     ]
#   }
# }

