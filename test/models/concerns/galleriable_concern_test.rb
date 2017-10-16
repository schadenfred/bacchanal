require 'test_helper'

describe "GalleriableConcern" do

  # ["Org", "Product"].each do |galleriable_model|
  ["Org"].each do |galleriable_model|

    subject { galleriable_model.constantize }

    describe "#{galleriable_model.to_s}" do

      specify "associations" do
        must_have_many :galleries
        must_have_many :slides
        must_have_many :photos
      end

      specify "default_photo" do

        assert subject.new.respond_to? :default_gallery
        assert subject.new.respond_to? :default_photo
      end

      Given(:galleriable) { FactoryGirl.create(galleriable_model.to_s.downcase.to_sym) }
      Given(:gallery) { galleriable.galleries.create(name: "default") }
      Given(:photographer) { FactoryGirl.create(:user) }

      Given do
        gallery.photos.create(
          photographer_id: photographer.id,
          name: "awesome pic",
          image: Rails.root.join("test", "samples", "test.jpg"),
          slides_attributes: [ { gallery_id: gallery.id } ] )
      end

      Then { galleriable.default_gallery.name.must_equal "default" }
      # And  { galleriable.default_photo.name.must_equal "awesome pic" }
    # Given(:org) { default_gallery.galleriable }

    # describe ":default_gallery" do

    #   Then { default_gallery.name.must_equal "default" }
    #   And  { org.default_gallery.must_equal default_gallery }
    # end

    # describe ":gallery(name)" do

    #   Then { org.gallery("default").must_equal default_gallery }
    # end

    end
  end
end
