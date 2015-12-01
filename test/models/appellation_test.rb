require "test_helper"

describe Appellation do 

  subject { Appellation }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:name)
      must_have_column(:description)
    end
  end

  describe "indexes" do 

  end

  specify "associations" do 

    must_have_many :addresses
    must_have_many :addressable
  end
end