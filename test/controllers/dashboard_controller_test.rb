require "test_helper"

describe DashboardController do

  Given(:user) { FactoryGirl.create(:user) }

  context "authenticated" do

    Given { sign_in user }

    When  { get dashboard_url }
    Then  { assert_response :success }
  end

  context "not authenticated" do

    Given { sign_out user }
    When  { get dashboard_url }
    Then  { assert_response :redirect }
  end
end
