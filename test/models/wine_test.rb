require "test_helper"

describe Wine do

  subject { Wine }

  specify "properties" do 

    assert subject.new.respond_to? :properties
    assert subject.new.respond_to? :price
  end

  specify "associations" do 

    must_belong_to :winery

    must_have_many :photos
  end 
end