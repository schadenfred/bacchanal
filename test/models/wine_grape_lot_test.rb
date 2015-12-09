require "test_helper"

describe WineGrapeLot do 

  subject { WineGrapeLot }

  specify "associations" do 

    must_belong_to :vineyard
    must_belong_to :wine
  end
end