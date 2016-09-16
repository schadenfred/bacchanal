require "test_helper"

describe "static pages route integration test" do

  %w[about].each do |page|
    it ":get #{page}" do
      assert_generates "/#{page}", controller: "static", action: "about"
    end
  end
end