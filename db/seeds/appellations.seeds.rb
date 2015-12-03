after :addresses do

  addresses = Address.all 
  appellations = [
    {
      "Anderson Valley" => "Anderson Valley in California’s Mendocino County now ranks with the top Pinot Noir regions in North America. While production is not huge, quality is soaring, as rising-star winemakers join home grown stalwarts in producing sleek, powerful Pinots. Cutting laterally through the coastal range rather than lying between ridges, the west or “deep end” of the Anderson Valley is only a few miles from the cold Pacific Ocean, while the town of Boonville is some 20 miles to the east. Such unique geography results in a wide diurnal range, with daily high and low temperatures occasionally diverging 40 or 50 degrees. This enables Pinot Noir growers to keep acid development in line with sugar and flavor formation through long, warm Indian summers. It also makes for superb Gewurztraminer and Riesling, giving rise to the valley’s annual Alsatian festival. In eastern and ridge-top sites there is plenty of warmth to ripen Chardonnay and Sauvignon Blanc. Then there’s sparkling wine. With several methode champenoise sparkling houses, Anderson Valley is bubbly paradise. More information is available at Anderson Valley Winegrowers Association",
    }, {
      "Yorkville Highlands" => "The region was approved as an AVA in 1998 because of its distinctive soils and temperatures relative to neighboring Anderson Valley. Yorkville Highlands' rocky soils, with high-gravel content, differ from the loamy, clay soils common to neighboring appellations. These highly-porous soils allow for superior water drainage, forcing the roots of vines to dig deep for water. The result is low-vigor vines that yield concentrated fruit. The moderate temperatures of the AVA are suitable for Sauvignon Blanc, but also show great promise for Bordeaux reds like Cabernet Sauvignon and Merlot. More information is available at Yorkville Highlands Growers and Vintners Association"
    }, {
      "McDowell Valley" => "The McDowell Valley AVA is a high-sloping bench land that sits up to 1,000 feet above sea level and which obtained appellation status in 1987. Overlooking the Russian River to the west, this charming valley in southeastern Mendocino County covers only 540 acres. The region is slightly cooler than surrounding areas, creating conditions that are ideal for select varietals. The McDowell Valley specializes in Rhone red varietals like Grenache and Syrah, plus Zinfandel, some coming from century-old vineyards. White Rhone varietals like Marsanne and Viognier complement the roster of big flavorful reds."
    }, {
    "Potter Valley" => "Located east of Mendocino's Redwood Valley, the upland Potter Valley AVA sits more than 200 feet higher than its surrounding areas. Great day-night temperature variations separate Potter Valley from other growing areas in Mendocino. Mid-day in this inland valley can be truly hot, but nighttime temperatures plummet. Under such conditions, varieties like Sauvignon Blanc, Chardonnay, Riesling, and Pinot Noir flourish, developing strong but refined character."
    }, {
    "Redwood Valley" => "The climate of this upland valley is cooler than surrounding appellations due to a gap in the coastal ridge which allows cool Pacific air currents to penetrate. These conditions lead to a gradual ripening of fruit that makes Redwood Valley Cabernet Sauvignon, Zinfandel, Barbera and Petite Sirah refined and complex. The notable red soil of the area also provides character to the wines. The earliest vineyards in Mendocino County were planted here among the ancient redwoods by Italian immigrants. The area gained official appellation status in 1997. More information is available at A Taste of Redwood Valley"
    }, {
    "Cole Ranch" => "The Cole Ranch AVA has the distinction of being North America’s smallest appellation. This isolated viticultural area of less than one quarter square mile sits between the Russian River and Anderson Valley in Mendocino County. Here sixty acres of Cabernet Sauvignon, Merlot and Riesling vines are found tucked into the high hills ranging from 1,400-1,600 feet in elevation. Today, the Sterling family, proprietors of the Esterlina Winery located at Philo, owns the entire vineyard acreage of the appellation."
    }
  ]

  counties = [
    { "Mendocino" => "The Mendocino County appellation is part of the large North Coast AVA that spreads northward from San Francisco Bay. Traditionally, Mendocino wines were consumed locally. More recently, however, modern world-wide distribution has brought international recognition. Long famous for its redwood forests, today Mendocino County is a world leader in certified organically-grown grapes. There are 17,000 acres of vineyards in the County, with 25% of them growing certified organic grapes."
    }
  ]

  states = [
    { "california" => "Wine arrived in California via the Spanish Mission chain, working its way northward from South America. Over the next four centuries the Golden State would strive to prove that it was the true Oenotria. By the second half of the 20th century, California was firmly established as one of the very best wine regions in the world. With 480,000 vineyard acres and 1200+ wineries producing an amazing 560 million gallons of wine annually, California is only exceeded by the national outputs of Italy, France, and Spain. Today, vineyards cover the state from north to south, and include just about every conceivable microclimate, with hospitable conditions for the cultivation of every classic wine variety, as well as a host of Californian originals. With such diversity, California can not be taken seriously as a 'distinct' region. Within the state, almost 90 different American Viticultural Areas have already been officially recognized by the TTB, with many more pending. California vintners can produce every wine type and style imaginable, from dry to dessert, fortified, and sparkling. For the wine consumer, California is the one-stop-shopping destination with a wine for every palate. For this same reason California, used as an appellation, can only be a guarantee of broadest-origin (and nothing more), and wines carrying the California appellation are likely to be blends of fruit originating from a number of more specific (and distinct) appellations within the state."
    }
  ]
  [appellations, counties, states].each do |appellation_type|

    appellation_type.each do |appellation|

      appellation = Appellation.create(
        name: appellation.keys.first,
        description: appellation.values.first
      )
      
    end
  end
end 
