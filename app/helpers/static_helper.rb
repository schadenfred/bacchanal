module StaticHelper

  def static_section_links
    %w[home about wineries team news]
  end

  def static_page_links
    %w[pricing]
  end

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
    keys = %w[quote author note]
    values.each do |value|
      zipped = keys.zip(value)
      quotes << Hash[zipped]
    end
    quotes
  end

  def pricing_plans

    plans = [
      {
        name: "dirt",
        multiplier: 1,
        price: "9",
        tagline: 0,
        highlighted: false
      }

    ]
    #   "dirt" => {
    #     multiplier: 1,
    #     price: "9",
    #     tagline: 0,
    #     highlighted: false
    #   },
    #   "grange" => {
    #     multiplier: 3,
    #     price: "19"
    #   },
    #   "patron" => {
    #     multiplier: 5,
    #     price: "29",
    #     tagline: "best value",
    #     highlighted: true
    #   },
    #   "doyen" => {
    #     multiplier: 7,
    #     price: "39",
    #     tagline: 0,
    #     highlighted: false
        
    #   }
    # }
    # plans.each do |plan|
    #   plans[plan.first]["features"] = features_list
    # end
    # plans.with_indifferent_access
  end 

  def features_list
    [
      {
        name: "winery page",
        plan: 0,
        icon: "heart",
        description: "Sole control of your winery's page. Tell its history, and where it's headed. Requires verification"
      }, {
        name: "wine pages",
        plan: 0,
        icon: "heartbeat",
        description: "Sole control of each of your winery's wine pages. Tell wine lovers how a wine is different, when and how it was made, and which winegrape varietals from which vineyard blocks you sourced their fruit." 
      }, {
        name: "vineyard pages",
        plan: 0,
        icon: "leaf",
        description: "A page for each vineyard, with a map delineating blocks, detailed information on climate, soil, how you farm, the varietal, rootstock, clone and irrigation, as well as verticals showing all the wines from different wineries sourced from each block. List your vineyard, tell its history, teach people about your process and who you are.", 
        factorable: [true, 1]
      }, {
        name: "artist page",
        plan: 0,
        icon: "paint-brush",
        description: "Pages for you and your art and easy ways for you to cross promote with wineries.",
        factorable: [true, 1] 
      }, {
        name: "blog",
        plan: 1,
        icon: "pencil-square-o",
        description: "Let people know what's going on with your winery, events, sales, new vintages, winery cat photos, whatever -- and then push each article to all social media without siloing its content on just one."
      }, {

      name: "photos & galleries",
      plan: 0, 
      icon: "photo",
      description: "upload photos and use them on your winery, wine, and vineyard pages."

      }
    ]
      # "showcases" => {
      #   plan: 0,
      #   icon: "rocket",
      #   description: "List any wine from any any winery. A showcase could be all of the gewurztraminers made in the Anderson Valley in 2012, or your favorite sparkling wines, or a list of value wines you recommend for under twenty dollars, or it could be a list of the wines you are pouring in your tasting room today. Your rules, your showcase.",
      # factorable: [true, 2],
      # proposed: true
      # },
      # "unlimited certifications" => {
      #   plan: 0, 
      #   icon: "graduation-cap",
      #   description: "Have your wine, vineyard, or winery certified by different organizations -- and make sure people can see your wine awards.",
      #   proposed: true
      # },
      # "awards" => {
      #   plan: 0, 
      #   icon: "trophy",
      #   description: "Did your malbec win a silver medal? Brag it up!",
      #   proposed: true
      # },
      # "custom wine flavor wheel" => {
      #   plan: 2,
      #   icon: "pie-chart",
      #   description: "Encourage wine lovers to think about wine with your custom flavor wheel.",
      #   proposed: true
      # },
      # "unlimited wine reviews" => {
      #   plan: 0,
      #   icon: "quote-right",
      #   description: "The simplest possible wine review system that actually works."
      # },
      # "positions" => {
      #   plan: 0,
      #   icon: "paw",
      #   description: "show people who has worked with you, and when.",
      #   proposed: true
        
      # },
      # "photos & galleries" => {
      #   plan: 0, 
      #   icon: "photo",
      #   description: "upload photos and use them on your winery, wine, and vineyard pages."
      # },
      # "premium support" => {
      #   plan: 3,
      #   icon: "phone",
      #   description: "Any user can email us with any questions, suggestions, or feature requests at any time. As a premium support customer, though, we will actually care."
      # },
      # "product pages" => {
      #   plan: 0,
      #   icon: "barcode",
      #   description: "Want people to see all your bahlin t-shirts, merch, and swagger for sale?",
      #   proposed: true
      # },
      # "SEO" => {
      #   plan: 0,
      #   icon: "send-o",
      #   description: "We have some sweet SEO tricks that lots of developers don't know.",
      #   proposed: true
      # },
      # "store" => {
      #   plan: 3,
      #   icon: "send-o",
      #   description: "Sell your wines. Direct. Except better, because your customers can combine shipments from you with other wineries.",
      #   proposed: true
      # } 
    # }.with_indifferent_access.sort_by { |feature| feature[1]["plan"] }
  end
end


