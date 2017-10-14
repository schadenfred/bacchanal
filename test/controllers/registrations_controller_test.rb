require "test_helper"

describe RegistrationsController do

  Given(:stripe_helper) { StripeMock.create_test_helper }
  # Given { @request.env["devise.mapping"] = Devise.mappings[:user] }
  Given { Stripe.api_key = "sk_test_raxRUHqGQrtOw2Zwd3FqasDq" }
  Given { stripe_helper.create_plan(
    amount: 2000,
    interval: "month",
    id: "bacchanalien",
    name: "Bacchanalien") }
  Given(:plan) { Plan.first_or_initialize(attributes_for(:plan)) }
  Given { CreatePlanService.new.call }
  Given { plan.save!(:validate => false) }

  setup { StripeMock.start }
  teardown { StripeMock.stop }

  describe "#new" do

    Given { get new_user_registration_url, params: { plan: "bacchanalien" } }
    Then  { assert_response 200 }
  end

  describe "#create" do
# {"utf8"=>"✓", "authenticity_token"=>"FW6ki+qWB5pqLyt4SzKT3ZQ15eMiLEhEaGTdClCMH34vIR5v6WiO702vxgq1jl5gvS0SEq6I/z5gbKa2/YvJxA==", "user"=>{"plan_id"=>"1", "email"=>"fred.schoeneman+201603211841@gmail.com", "password"=>"password", "password_confirmation"=>"password"}, "plan_type"=>"plan", "plan_id"=>"1", "stripeToken"=>"tok_87uQYvjjKOSzZn", "stripeEmail"=>"fred.schoeneman+201603211841@gmail.com", "coupon"=>"", "quantity"=>"", "controller"=>"registrations", "action"=>"create"}
    Given(:user_attrs) { attributes_for(:user, plan_id: plan.id, tax_percent: 5) }


    Given(:make_request) { post user_registration_url, params: { user: user_attrs } }
    # Then do
    #   skip
    #   byebug
    #   assert_difference("User.count") do
    #     make_request
    #   end
    #   assert_equal Plan.count, 3
    # end
  end
end
