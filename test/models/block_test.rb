require "test_helper"

describe Block do

  subject { Block }

  specify "associations" do

    must_belong_to(:parent_vineyard)
    must_have_many(:blocks)
  end

  describe "full_name" do

    Given(:block) { create(:block) }
    Then { block.full_name.must_match block.parent_vineyard.name }
    And { block.full_name.must_match block.name }
  end
end