class Customer

  attr_reader :name, :age
  attr_accessor :wallet, :drunkness

  def initialize(name,wallet = [],age,drunkness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness = drunkness
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
