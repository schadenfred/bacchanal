require "test_helper"

describe Attachment do 

  subject { Attachment }

  describe "db" do 

    specify "columns & types" do 

      must_have_column(:attachment_name)
      must_have_column(:attachment_uid)
      must_have_column(:attachable_type)
      must_have_column(:attachable_id, :integer)
      must_have_column(:name)
      must_have_column(:summary)
    end
    
    specify "columns & types" do 

      must_have_index(:attachment_uid)
      must_have_index([:attachable_id, :attachable_type])
    end 
  end

  specify "associations" do 

    must_belong_to :attachable
  end
end
