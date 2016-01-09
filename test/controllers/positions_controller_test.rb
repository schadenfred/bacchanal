require "test_helper"

describe PositionsController do 

  Given(:user)    { create(:user) }
  Given(:winery)  { create(:winery) }
  Given(:wine)    { create(:wine) }

  Given { sign_in user }

  describe "#create" do

    describe "a position as a user for herself" do  

      Given(:request) { post :create, position: { user_id: user.id, positionable_type: "Org", title: "dog catcher", description: "caught dogs", positionable_tokens: winery.id }
       }
      
      Then { assert_difference("Position.count") { request } }
      
      # And { user.positions.last.org.must_equal winery }
    end
  end
end
