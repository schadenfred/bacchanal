require 'test_helper'

describe StaticController do 

  Given(:user) { FactoryGirl.create(:user) }
  Given { sign_out user}

  static_pages = %w[about terms privacy help contact home]

  static_pages.each do |page|

    describe "get /#{page}" do

      it "must succeed" do 

        get page.to_sym
        assert_response :success
      end
    end
  end
end
