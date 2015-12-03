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
    plan[:name].must_match /dirt/
    plan[:price].must_equal "9"
    feature = plan[:features].first
    feature[:name].must_match /winery page/
  end

  it ":features_list" do
    feature = features_list.first
    feature[:name].must_match /winery page/
    feature[:icon].must_match /heart/
  end 
end
