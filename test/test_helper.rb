ENV["RAILS_ENV"] = 'test'

require File.expand_path("../../config/environment", __FILE__)
Dir[File.expand_path('test/support/*.rb')].each { |file| require file }

require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'
require 'database_cleaner'
require 'minitest/given'

include TestMatchers 
include FactoryGirl::Syntax::Methods
  include Warden::Test::Helpers


class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
    after{ Warden.test_reset! }


    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

end

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  include Capybara::Assertions
end
