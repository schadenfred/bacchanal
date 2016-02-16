require "test_helper"

describe StaticHelper do

  it ":appellation_classes(appellations_array)" do
    appellation_classes(["Redwood Valley", "Mendocino"]).must_equal "redwood-valley mendocino"
  end

  it ":wine_quotes" do
    wine_quotes.first["author"].must_equal "Isak Dinesen"
    wine_quotes.first["note"].must_equal "Writer"
    wine_quotes.last["author"].must_equal "Homer"
    wine_quotes.last["note"].must_equal "The Odyssey"
  end

  it ":pricing_plans" do

    plan = pricing_plans.first
    plan[:name].must_match /alien/
    plan[:price].must_equal "20"
  end

  it ":features_list" do

    features.map { |f| f[:name] }.must_include "winery page"
  end

  it ":feature(feature_name)" do
    feature("winery page")[:name].must_equal "winery page"
  end
end
