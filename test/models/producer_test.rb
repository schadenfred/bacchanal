require "test_helper"

class ProducerTest < ActiveSupport::TestCase

  def producer
    @producer ||= Producer.new
  end

  def test_valid
    assert producer.valid?
  end

end
