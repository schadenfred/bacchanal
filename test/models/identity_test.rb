require "test_helper"

describe Identity do

  subject { Identity }

  describe "db" do

    specify "columns & types" do

      must_have_column(:identifiable_id, :integer)
      must_have_column(:identifiable_type)
      must_have_column(:link)
      must_have_column(:provider)
      must_have_column(:uid)
      must_have_column(:private, :boolean)
    end

    specify "indexes" do

      must_have_index([:identifiable_id, :identifiable_type])
    end
  end

  specify "associations" do

    must_belong_to(:user)
  end



#   describe "Identity.create_with_omniauth(auth)" do

#     Given(:auth) { {"provider" => "twitter", "uid" => "some_uid"} }
#     Then {
#       assert_difference("Identity.count") {
#         Identity.create_with_omniauth(auth)
#       }
#     }
#   end

#   describe "Identity.find_with_omniauth(auth)" do

#     Given(:identity) { FactoryGirl.create(:identity) }
#     Given(:auth) { {"provider" => identity['provider'], "uid" => identity['uid']} }
#     Then { Identity.find_with_omniauth(auth).must_equal identity }
#   end


end
