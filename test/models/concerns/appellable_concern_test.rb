require 'test_helper'

describe "AppellableConcern" do 

  ["Winery"].each do |appellable_model|

    subject { appellable_model.constantize }  
    
    describe "#{appellable_model.to_s}" do

      specify "associations" do 
        must_have_many :appellations
      end
    end
  end
end
