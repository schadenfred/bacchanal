require "test_helper"

describe DashboardController do
  
  Given(:user) { FactoryGirl.create(:user) }
  
  context "authenticated" do 
    
    Given { sign_in user }

    When  { get :show }
    Then  { assert_response :success }
    And   { assigns(:user).must_equal user }
  end

  context "not authenticated" do 

    Given { sign_out user }
    When  { get :show }
    Then  { assert_response :redirect }
  end
end
