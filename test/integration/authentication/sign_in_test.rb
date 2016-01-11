require "test_helper"

feature "Authentication Feature Test" do

  let(:user) { create( :user ) } 
  let(:winery) { create( :winery, name: "Fathers & Daughters cellars" ) }

  pages = { "home" => "/", "winery" => "wineries/fathers-daughters-cellars" } 
    
  pages.each do |k,v|
  
    scenario "Sign in from #{k} page" do
      winery
      visit v
      page.has_link?("Sign in")
      click_link "Sign in"
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      find_button("Sign in").click
      page.assert_selector(".alert", text: /Signed in successfully./)
      click_link "sign out"
      page.assert_selector(".alert", text: /Signed out successfully./)
    end
  end
end
