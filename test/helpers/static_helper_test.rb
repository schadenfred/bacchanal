require "test_helper"

describe StaticHelper do 

  it "wine_quotes" do 
    wine_quotes.first["author"].must_equal "Isak Dinesen"
  end
end
