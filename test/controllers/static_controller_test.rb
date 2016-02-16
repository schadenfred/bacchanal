require 'test_helper'

describe StaticController do

  Given(:user) { FactoryGirl.create(:user) }
  Given(:org)  { FactoryGirl.create(:org, name: "Bacchan.al") }

  Given { sign_out user}

  static_pages = %w[about terms privacy help contact]

  static_pages.each do |page|

    describe "get /#{page}" do

      it "must succeed" do

        org
        get page.to_sym
        assert_response :success
      end
    end
  end
end
