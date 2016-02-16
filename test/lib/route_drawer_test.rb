require "test_helper"
require "route_drawer.rb"

describe "routes" do

  describe "draw:" do

    describe ":namespace, :file" do

      Then { get_path( :api, :v1 ).to_s.must_match "/routes/api/v1.rb" }
    end

    describe ":file" do

      Then { get_path( :static ).to_s.must_match "/routes/static.rb" }
    end
  end
end