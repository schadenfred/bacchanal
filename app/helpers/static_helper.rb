module StaticHelper

  def wine_quotes
    values = [
      [
        "What is man, when you come to think upon him, but a minutely set, ingenious machine for turning with infinite artfulness, the red wine of Shiraz into urine?", 
        "Isak Dinesen",
        "Writer" 
      ],
      [
        "Red wine with fish. Well, that should have told me something.",
        "James Bond",
        "From Russia with Love (1963)"
      ],
      [
        "I rather like bad wine . . . one gets so bored with good wine.",
        "Benjamin Disraeli",
        "Earl of Beaconsfield 1804 - 1881"
      ],
      [
        "I have eaten your bread and salt. I have drunk your water and wine. The deaths ye died I have watched beside And the lives ye led were mine.",
        "Rudyard Kipling",
        "Writer"
      ],
      [
        "Who does not love wine, women, and song Remains a fool his whole life long.",
        "Johann Heinrich Voss 1751 - 1826",
        "Poet"
      ],
      [
        "Some of the most dreadful mischiefs that afflict mankind proceed from wine; it is the cause of disease, quarrels, sedition, idleness, aversion to labor, and every species of domestic disorder.",
        "François de Salignac de la Mothe Fénelon 1651 - 1715",
        "Writer, Archbishop"
      ],
      [
        "The wine urges me on, the bewitching wine, which sets even a wise man to singing and to laughing gently and rouses him up to dance and brings forth words which were better unspoken.",
        "Homer",
        "The Odyssey"
      ]
    ]
    quotes = []
    values.each do |value|
      quotes << Hash[["quote", "author", "note"].zip(values.first)]
    end
    quotes
  end

  def pricing_plans

    plans = {
      "dirt" => {
        price: "9",
        tagline: 0,
        highlighted: false
      },
      "grange" => {
        price: "19"
      },
      "silver" => {
        price: "29",
        tagline: "best value",
        highlighted: true
      },
      "gold" => {
        price: "39",
        tagline: 0,
        highlighted: false
        
      }
    }
    plans.each do |plan|
      plans[plan.first]["features"] = features_list
    end
    plans.with_indifferent_access
  end 

  def features_list
    {
      "artist pages" => { 
        plan: 0,
        icon: "paint-brush",
        description: "Pages for you and your art and easy ways for you to cross promote with wineries."
      },
      "winery pages" => { 
        plan: 0,
        icon: "heart",
        description: "List your winery, tell its history, teach people about your process and who you are."
      },
      "wine pages" => { 
        plan: 0,
        icon: "heartbeat",
        description: "List each of your wines, tag them with appellations, varietals, styles etcetera. Tell about how and when they were made, and from which vineyards you sourced their fruit."
      },
      "vineyard pages" => { 
        plan: 0,
        icon: "leaf",
        description: " A page for each vineyard, with a map delineating blocks, detailed information on climate, soil, how you farm, the varietal, rootstock, clone and irrigation, as well as verticals showing all the wines from different wineries sourced from each block. List your vineyard, tell its history, teach people about your process and who you are."
      },
      "blogs" => {
        plan: 1,
        icon: "pencil-square-o",
        description: "Let people know what's going on with your winery, events, sales, new vintages, winery cat photos, whatever -- and then push each article to social media without siloing its content."
      },
      "showcases" => {
        plan: 0,
        icon: "rocket",
        description: "List any wine from any any winery. A showcase could be all of the gewurztraminers made in the Anderson Valley in 2012, or your favorite sparkling wines, or a list of value wines you recommend for under twenty dollars, or it could be a list of the wines you are pouring in your tasting room today. Your rules, your showcase."
      },
      "certifications" => {
        plan: 0, 
        icon: "graduation-cap",
        description: "Have your wine, vineyard, or winery certified by different organizations -- and make sure people can see your wine awards."
      },
      "awards" => {
        plan: 0, 
        icon: "trophy",
        description: "Did your malbec win a silver medal? Brag it up!"
      },
      "custom wine flavor wheel" => {
        plan: 2,
        icon: "pie-chart",
        description: "Encourage wine lovers to think about wine with your custom flavor wheel."
      },

      "wine reviews" => {
        plan: 0,
        icon: "quote-right",
        description: "The simplest possible wine review system that actually works."
      },
      "positions" => {
        plan: 0,
        icon: "paw",
        description: "show people who has worked with you, and when."
        
      },
      "photos & galleries" => {
        plan: 0, 
        icon: "photo",
        description: "upload photos and use them on your winery, wine, and vineyard pages."
      },
      "premium support" => {
        plan: 3,
        icon: "phone",
        description: "Any user can email us with any questions, suggestions, or feature requests at any time. As a premium support customer, though, we will actually care."
      },
      "product pages" => {
        plan: 0,
        icon: "barcode",
        description: "Want people to see all your bahlin t-shirts, merch, and swagger for sale?"
      },
      "SEO" => {
        plan: 0,
        icon: "send-o",
        description: "We have some sweet SEO tricks that lots of developers don't know."
      },
      "store" => {
        plan: 3,
        icon: "send-o",
        description: "Sell your wines. Direct. Except better, because your customers can combine shipments from you with other wineries."
      } 
    }.with_indifferent_access.sort_by { |feature| feature[1]["plan"] }
  end
end


