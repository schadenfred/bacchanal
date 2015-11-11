require "test_helper"

describe Slide do 

  subject { Slide } 

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:gallery_id, :integer)
      must_have_column(:photo_id, :integer)
      must_have_column(:properties, :hstore)
    end

    specify "indexes" do
      
      must_have_index([:photo_id, :gallery_id]) 
    end

    specify "properties" do 

      assert subject.new.respond_to? :call_to_action
      assert subject.new.respond_to? :bullet_big
      assert subject.new.respond_to? :bullet_small
    end
  end
end
