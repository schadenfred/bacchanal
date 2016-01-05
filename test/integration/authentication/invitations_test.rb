require "test_helper"

feature "Invitation Feature Test" do

  before do 
    @user = FactoryGirl.create(:user)
    login_as(@user)
  end 
  
  scenario "from sign in page" do
    visit new_user_invitation_path
    fill_in "Email", with: "Narcy.david@gmail.com"
    click_button "Send an invitation"
    @user.reload.invitation_limit.must_equal 4
    open_email("narcy.david@gmail.com")
    current_email.body.must_match "#{@user.name.capitalize} thinks you would be a fun"
    current_email.click_link "Accept invitation"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Set my password"
    page.assert_selector(".alert", text: /Your password was set successfully. You are now signed in./)
  end
end
