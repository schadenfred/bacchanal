require "test_helper"

class LotTest < ActiveSupport::TestCase
  def lot
    @lot ||= Lot.new
  end

  def test_valid
    assert lot.valid?
  end
end
