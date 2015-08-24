require "test_helper"

describe Competition do

  subject { Competition }

  specify "associations" do 

    must_have_many :events
  end

  specify "scopes" do 
    
    # must_respond_to(:wineries)
  end 
end