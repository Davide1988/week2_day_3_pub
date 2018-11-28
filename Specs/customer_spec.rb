require("minitest/autorun")
require("minitest/rg")
require_relative("../customer")
require_relative("../drink")


class CustomerTest < MiniTest::Test

  def setup
    @drink_1 = Drink.new("Merlot",5)

    @customer_1 = Customer.new("Nadia", 100)
    @customer_2 = Customer.new("Davide", 1)
  end

  def test_get_customer_name
    assert_equal("Nadia", @customer_1.name)
  end

  def test_get_customer_wallet_content
    assert_equal(1,@customer_2.wallet)
  end

  def test_customer_can_afford_drink__true
    assert_equal(true, @customer_1.can_afford_drink(@drink_1))
  end

  def test_customer_can_afford_drink__false
    assert_equal(false, @customer_2.can_afford_drink(@drink_1))
  end

  def test_customer_pay_for_drink
    assert_equal(95, @customer_1.customer_pay_for_drink(@drink_1))
  end




end
