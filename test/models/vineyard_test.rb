require "test_helper"

describe Vineyard do

  subject { Vineyard }

  specify "methods" do

    assert subject.new.respond_to? :varietal
  end

  specify "associations" do

    must_have_many(:blocks)
    must_have_many(:wine_grape_lots)
    must_have_many(:wines)
  end

  describe "#blocks" do

    Given(:vineyard) { FactoryGirl.create(:vineyard) }
    Given { vineyard.blocks.create(name: "2a")}
    Then { vineyard.blocks.first.name.must_equal "2a" }

  end
end