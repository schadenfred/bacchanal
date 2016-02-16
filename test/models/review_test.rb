require "test_helper"

describe Review do

  subject { Review }

  describe "db" do

    specify "columns & types" do

      must_have_column(:content)
      must_have_column(:reviewer_id, :integer)
      must_have_column(:wine_id, :integer)
      must_have_column(:rating, :integer)
    end

    specify "indexes" do

      must_have_index([:reviewer_id, :wine_id])
    end
  end

  specify "associations" do

    must_belong_to :reviewer
    must_belong_to :wine

    must_have_many :curations
  end
end
