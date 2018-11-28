class Pub

 attr_reader :name, :drinks
 attr_accessor :till

def initialize(name, till = 0, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def customer_buy_drink(drink,customer)
  if customer.drunkness < 10
   if customer.age > 18
     if customer.can_afford_drink(drink)
     customer.wallet = customer.wallet - drink.price
     @till += drink.price
     return @till
     end
   else
   end
 else
 end
end



end
