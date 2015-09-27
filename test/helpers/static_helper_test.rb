require "test_helper"

describe StaticHelper do 

  it ":wine_quotes" do 
    # wine_quotes.must_equal "blah"
    wine_quotes.first["author"].must_equal "Isak Dinesen"
    wine_quotes.first["note"].must_equal "Writer"
    wine_quotes.last["author"].must_equal "Homer"
    wine_quotes.last["note"].must_equal "The Odyssey"
  end

  it ":pricing_plans" do 
    plan = pricing_plans["grange"]
    plan["price"].must_equal "19"
    plan_features = plan["features"][0]
    plan_features[0].must_equal "artist pages"
    plan_features[1]["icon"].must_equal "paint-brush"
    plan_features[1]["plan"].must_equal 0
  end

  it ":features_list" do
    features_list[0][0].must_equal "artist pages"
    features_list[0][1][:icon].must_equal "paint-brush"
  end 
end
