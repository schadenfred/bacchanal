require "test_helper"

describe ProfileController do
  
  Given(:user)          { FactoryGirl.create(:user) }
  Given(:another_user)  { FactoryGirl.create(:user) }

  context "authenticated" do 

    Given { sign_in user }
    Given { get :show, id: another_user } 
    Then  { assert_response :success }
    And   { assert_not_nil assigns(:user) }
  end

  context "not authenticated" do 

    Given { sign_out user }
    Given { get :show, id: another_user } 
    Then  { assert_response :redirect }
  end
end
