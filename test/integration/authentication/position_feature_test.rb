require "test_helper"

feature "Position Feature Test" do

  let(:user) { create(:user) } 
  let(:winery) { create(:winery) } 
  
  scenario "add position to user and org" do 
skip
    login_as user
    visit dashboard_path

    within("#positions") do 
      fill_in "Job or position title", with: "HMFIC"
      fill_in "Winery, vineyard, or wine name", with: winery.name
      click_button "create a new position"
    end
    user.positions.last.org.must_equal winery

    # user.positions.last



  end
end

