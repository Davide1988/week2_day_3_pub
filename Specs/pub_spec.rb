require("minitest/autorun")
require("minitest/rg")
require_relative("../pub")
require_relative("../drink")
require_relative("../customer")


class PubTest < MiniTest::Test

def setup
  @drink_1 = Drink.new("Merlot",5)
  @drink_2 = Drink.new("Corona",3)

  @drinks = [@drink_1, @drink_2]

  @pub = Pub.new("Red Lion",[],@drinks)

  @customer_1 = Customer.new("Nadia", 100)
  @customer_2 = Customer.new("Davide", 1)

end


def test_get_pub_name()
  assert_equal("Red Lion",@pub.name)
end

def test_get_drinks_from_pub()
  assert_equal(@drinks,@pub.drinks)
end

# def test_customer1_buy_drink_no_matter_if_poor__1
#   @pub.customer_buy_drink(@drink_1.price,@customer_1)
#   assert_equal(95, @customer_1.wallet)
# end
#
# def test_customer1_buy_drink_no_matter_if_poor__2
#   @pub.customer_buy_drink(@drink_2.price,@customer_1)
#   assert_equal(97, @customer_1.wallet)
# end
#
# def test_customer2_buy_drink_no_matter_if_poor__1
#   @pub.customer_buy_drink(@drink_1.price,@customer_2)
#   assert_equal(-4, @customer_2.wallet)
# end
# def test_customer_buy_drink__no_money
#
#   # @pub.customer_buy_drink(@drink_1.price,@customer_2)
#
#     @pub.can_buy_drink(@drink_1, @customer_2)
#     assert_equal("Not enough money!", @customer_1.can_afford_drink(@drink_1))
# end

# def test_customer_buy_drink
#
#   # @pub.customer_buy_drink(@drink_1.price,@customer_2)
#
#     @pub.can_buy_drink(@drink_1, @customer_1)
#     assert_equal("Enjoy!", @customer_1.can_afford_drink(@drink_1))
# end

def test_customer_buy_drink
  @pub.customer_buy_drink(@drink_1,@customer_1)
  assert_equal(5, @pub.till)
end

# def test_customer_can_really_buy_drink
#
#   p @pub.can_afford_drink(@customer_1)
# end


end
    #  @pub.drinks[0].price
    # p @customer_1.wallet
