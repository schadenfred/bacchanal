require "test_helper"

describe WineriesHelper do

  it "#sortable_classes" do
    sortable_classes(["carignan"]).must_equal "carignan"
    sortable_classes(["carignan", "zinfandel"]).must_equal "carignan zinfandel"
    sortable_classes(["carignan", "pinot grigio"]).must_equal "carignan pinot-grigio"
  end

  it "#flavor_choices" do
    flavor_choices["spicy"]["spicy"].must_include "clove"
    flavor_choices["fruity"]["citrus"].must_include "lemon"
  end
end