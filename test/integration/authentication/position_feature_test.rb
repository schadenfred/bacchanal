require "test_helper"

feature "Position Feature Test" do

  let(:user) { create(:user) } 
  let(:winery) { create(:winery) } 
  
  scenario "add position to user and org" do 

    login_as user
    visit dashboard_path

    within("#positions") do 
      fill_in "Job or position title", with: "HMFIC"
      fill_in "Organization name", with: winery.name
      click_button "create a new position"
    end
    # user.positions.last



  end
end

