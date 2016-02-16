require "test_helper"

describe "static pages route acceptance test" do

  %w[about terms privacy help contact].each do |page|
    it ":get #{page}" do
      assert_generates "/#{page}", controller: 'static', action: page
    end
  end
end