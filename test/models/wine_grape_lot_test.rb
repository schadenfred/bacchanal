require "test_helper"

class WineGrapeLotTest < ActiveSupport::TestCase
  def wine_grape_lot
    @wine_grape_lot ||= WineGrapeLot.new
  end

  def test_valid
    assert wine_grape_lot.valid?
  end
end
