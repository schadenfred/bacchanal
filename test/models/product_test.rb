require "test_helper"

describe Product do

  subject { Product }

  describe "db" do 

    specify "columns & types" do 
      must_have_column(:name, :string)
      must_have_column(:slug, :string)
      must_have_column(:properties, :hstore)
    end

    specify "indexes" do
      must_have_index(:name) 
      must_have_index(:slug) 
    end
  end 
end