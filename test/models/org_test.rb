require "test_helper"

describe Org do

  subject { Org }

  describe "db" do

    specify "columns & types" do

      must_have_column(:blog_title)
      must_have_column(:logo_id, :integer)
      must_have_column(:name)
      must_have_column(:parent_id, :integer)
      must_have_column(:properties, :hstore)
      must_have_column(:slug)
    end

    specify "indexes" do

      must_have_index(:name)
      must_have_index(:slug)
    end
  end

  specify "associations" do

    must_have_many :articles
    must_have_many :positions
  end
end