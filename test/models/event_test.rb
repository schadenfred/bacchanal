require "test_helper"

describe Event do

  subject { Event }

  specify "associations" do 

    must_belong_to :competition
  end
end
