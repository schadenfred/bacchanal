require "test_helper"

describe Wine do

  subject { Wine }

  specify "properties" do 

    assert subject.new.respond_to? :properties
    assert subject.new.respond_to? :vintage
    assert subject.new.respond_to? :bottled_on
    assert subject.new.respond_to? :released_on
  end

  specify "associations" do 

    must_belong_to :winery

    must_have_many :photos
    must_have_many :slides
    must_have_many :galleries
  end

  Given(:winery) { Winery.create(name: "cool winery name") }
  Given(:wine) { winery.wines.create( name: "cool wine name" ) }
  Given(:address) { winery.addresses.create( attributes_for( :address) ) }
  Given(:appellation) { address.appellations.create( attributes_for( :appellation ) ) }
  
  describe "appellations" do 

    Given { appellation }
    Then  { winery.appellations.must_include appellation } 
  end 
end