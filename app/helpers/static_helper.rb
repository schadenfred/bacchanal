module StaticHelper

  def static_section_links
    # team
    %w[about wineries team pricing]
  end

  def static_page_links
    # terms privacy help
    %w[]
  end

  def appellation_classes(appellations)
    
    appellations.map! {|item| item.parameterize }
    appellations.join(" ")
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
        name: "Bacchanalien",
        price: "20",
      }, {
        name: "maenad",
        price: "50"
      }, {
      name: "satyr",
        price: "130",
        tagline: "best value",
        highlighted: true
      }
    ]
  end 

  def priceable_features
    ["winery page", "vineyard page", "wine page", "curated reviews", "journal", "premium support"]
  end

  def open_bar_features
    ["photos & photo galleries", "wine reviews", "curated reviews", "wine page", "certifications", "awards"]
  end


  def features
    [
      {
        name: "awards",
        plan: "unlimited",
        icon: "trophy",
        description: "Did your malbec win a silver medal? Brag it up!",
        proposed: true
      }, {
        name: "curated reviews",
        plan: "unlimited",
        icon: "heart",
        description: "Allows you to present the reviews of your wine you feel are most helpfu, instead of our default, which is to show the most reent ones."
      
      }, {
        name: "winery page",
        plan: [1,1,1],
        icon: "heart",
        description: "Sole control of your winery's page. Tell its history, and where it's headed. Requires verification"
      }, {
        name: "wine page",
        plan: "unlimited",
        icon: "heartbeat",
        description: "Sole control of each of your winery's wine pages. Tell wine lovers how a wine is different, when and how it was made, and which winegrape varietals from which vineyard blocks you sourced their fruit." 
      }, {

        name: "photos & photo galleries",
        plan: "unlimited",
        icon: "photo",
        description: "upload photos and use them on your winery, wine, and vineyard pages."      
      }, {

        name: "certifications",
        plan: "unlimited",
        icon: "graduation-cap",
        description: "Have your wine, vineyard, or winery certified by different organizations -- and make sure people can see your wine awards.",
        proposed: true
      }, {
        name: "wine reviews",
        plan: "unlimited",
        icon: "quote-right",
        description: "The simplest possible wine review system that actually works."

      }, {
        name: "positions",
        plan: "unlimited",
        icon: "paw",
        description: "show people who has worked with you, and when.",
        proposed: true
      }, {
        name: "vineyard page",
        plan: [1,2,3,4],
        icon: "leaf",
        description: "A page for each vineyard, with a map delineating blocks, detailed information on climate, soil, how you farm, the varietal, rootstock, clone and irrigation, as well as verticals showing all the wines from different wineries sourced from each block. List your vineyard, tell its history, teach people about your process and who you are.", 
 
      }, {
        name: "journal",
        plan: [false, true, true],
        singular: true,
        icon: "pencil-square-o",
        description: "Let people know what's going on with your winery, events, sales, new vintages, winery cat photos, whatever -- and then push each article to all social media without siloing its content on just one."
      
      }, {

        name: "showcase",
        plan: [1,2,3,4],
        icon: "rocket",
        description: "List any wine from any any winery. A showcase could be all of the gewurztraminers made in the Anderson Valley in 2012, or your favorite sparkling wines, or a list of value wines you recommend for under twenty dollars, or it could be a list of the wines you are pouring in your tasting room today. Your rules, your showcase.",
        factorable: [true, 2],
        proposed: true
      
      }, {
        name: "artist page",
        plan: [1,2,3,4],
        icon: "paint-brush",
        description: "Pages for you and your art and easy ways for you to cross promote with wineries.",
        factorable: [true, 1]
      }, {
        
        name: "premium support",
        singular: true,
        plan: [false, false, true],
        icon: "phone",
        description: "Any user can email us with any questions, suggestions, or feature requests at any time. As a premium support customer, though, we will actually care."
      }, {
        name: "product pages",
        plan: [false, false, false, true],
        icon: "barcode",
        description: "Want people to see all your bahlin t-shirts, merch, and swagger for sale?",
        proposed: true
      }, {
        name: "SEO",
        singular: true,
        plan: [false, false, true],
        icon: "send-o",
        description: "We have some sweet SEO tricks that lots of developers don't know.",
        proposed: true
      }, {

        name: "custom wine wheel",
        plan: [false, false, false, true],
        icon: "pie-chart",
        description: "Encourage wine lovers to think about wine with your custom flavor wheel.",
        proposed: true
      }, {
        mame: "store",
        plan: 3,
        icon: "send-o",
        description: "Sell your wines. Direct. Except better, because your customers can combine shipments from you with other wineries.",
        proposed: true
      } 
    ]
  end

  def feature(feature_name)
    features.detect { |f| f[:name] == feature_name }

  end
end


