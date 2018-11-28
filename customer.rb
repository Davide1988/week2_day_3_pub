class Customer

  attr_reader :name
  attr_accessor :wallet

  def initialize(name,wallet = [])
    @name = name
    @wallet = wallet
  end

  def can_afford_drink(drink)
    if @wallet >= drink.price
      return true
    else
      return false
    end
  end

  def customer_pay_for_drink(drink)
    @wallet -= drink.price
  end


end
