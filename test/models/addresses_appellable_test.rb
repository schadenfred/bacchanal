require "test_helper"

class AddressesAppellableTest < ActiveSupport::TestCase
  def addresses_appellable
    @addresses_appellable ||= AddressesAppellable.new
  end

  def test_valid
    assert addresses_appellable.valid?
  end
end
