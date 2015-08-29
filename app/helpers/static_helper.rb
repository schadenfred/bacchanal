module StaticHelper

  def wine_quotes
    array_of_keys = ["quote", "author", "note"]
    array_of_values = [
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
    array_of_values.each do |value|
      quotes_hash = {}
      array_of_keys.each_with_index do |key, index|
        quotes_hash[key] = value[index]
      end
      quotes << quotes_hash
    end
    quotes
  end
end
