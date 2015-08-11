require "test_helper"

describe Producer do

  subject { Producer }

  describe "db" do 

    specify "columns & types" do 
      must_have_column(:name, :string)
      must_have_column(:slug, :string)
      must_have_column(:facets, :hstore)
    end

    specify "indexes" do
      must_have_index(:name) 
      must_have_index(:slug) 
    end
  end 
end