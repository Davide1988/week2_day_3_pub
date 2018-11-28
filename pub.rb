class Pub

 attr_reader :name, :drinks
 attr_accessor :till

def initialize(name, till = [], drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def customer_buy_drink(drink,customer)
  if customer.can_afford_drink(@drinks)
  customer.wallet = customer.wallet - drink
  @till << drink
  return @till
end
end



end
