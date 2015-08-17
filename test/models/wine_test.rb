require "test_helper"

describe Wine do

  subject { Wine }

  specify "associations" do 

    must_belong_to :winery
  end 
end