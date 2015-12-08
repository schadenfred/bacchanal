require "test_helper"

describe WineriesHelper do 

  it "#flavor_choices" do 
    flavor_choices["spicy"]["spicy"].must_include "clove"
    flavor_choices["fruity"]["citrus"].must_include "lemon"
  end

end