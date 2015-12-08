require "test_helper"

describe Vineyard do 

  subject { Vineyard }

  specify "associations" do 

    must_have_many(:wine_grape_lots)
    must_have_many(:wines)
  end
end