require 'test_helper'

describe "AttachableConcern" do 

  ["Wine"].each do |attachable_model|

    subject { attachable_model.constantize }  
    
    describe "#{attachable_model.to_s}" do

      specify "associations" do 
        
        must_have_many :attachments
      end
    end
  end
end
