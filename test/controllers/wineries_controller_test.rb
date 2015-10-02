require "test_helper"

describe WineriesController do 

  Given(:user)    { FactoryGirl.create(:user) }
  Given(:winery)  { FactoryGirl.create(:winery) }
  
  context "when authenticated" do 

    Given { sign_in user } 

    describe "GET :new" do 

      Given { get :new }
      Then  { assert_response :success }
       # Given { get :new }
      # Then  { assert_response :success }
      # And   { assert_not_nil assigns :winery }
    end
  end

  # describe "#index" do 

  #   Given { get :index }
  #   Then  { assert_response :success }
  #   And   { assert_not_nil assigns :wineries }
  # end

  # describe "#create" do 

  #   Then do
  #     assert_difference("Winery.count") do
  #       post :create, winery: { name: "Fathers & Daughters" }
  #     end
  #     assert_redirected_to winery_path(assigns(:winery))
  #   end
  # end

  # describe "#update" do 

  #   Given { put :update, id: winery, winery: { name: "Williams Selyem" } }
  #   Then  { assert_redirected_to winery_path(assigns(:winery)) }
  # end

  # describe "#show" do 
    
  #   Given { get :show, id: winery }
  #   Then  { assert_response :success }
  # end

  # describe "#edit" do 
    
  #   Given { get :edit, id: winery }
  #   Then  { assert_response :success }
  # end

  # describe "#destroy" do 
    
  #   Then do 
  #     assert_difference("Winery.count", -1) do
  #       delete :destroy, id: winery
  #     end
  #   end
  # end
end
