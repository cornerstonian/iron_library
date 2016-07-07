require "test_helper"

class CheckoutTest < ActiveSupport::TestCase
  def checkout
    @checkout ||= Checkout.new
  end

  def test_valid
    assert checkout.valid?
  end
end
