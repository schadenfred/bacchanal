require "test_helper"

describe ProfileController do

  Given(:user)          { FactoryGirl.create(:user) }
  Given(:another_user)  { FactoryGirl.create(:user) }

  context "authenticated" do
    Given { another_user }
    Given { sign_in user }
    Given { get profile_url(another_user), params: { id: another_user.id } }
    Then  { assert_response :success }
  end

  context "not authenticated" do

    Given { sign_out user }
    Given { get profile_url(user)}
    Then  { assert_response 401 }
  end
end
