require "test_helper"

describe Producer do

  subject { Producer }

  specify "associations" do 

    must_have_many :products
  end

  specify "scopes" do 
    
    must_respond_to(:wineries)
  end 
end