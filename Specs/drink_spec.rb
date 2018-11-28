require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")


class DrinkTest < MiniTest::Test

  def setup
    @drink_1 = Drink.new("Merlot",5)
    @drink_2 = Drink.new("Corona",3)
  end

  def test_get_drink_name
    assert_equal("Merlot", @drink_1.name)
  end





end
