class Order < ApplicationRecord
    def products!
        Order.find(user_id).products
    end
    
    def shippable?
        status != "shipped" && product
    end

    def ship?
        if shippable?
          update(status: "shipped")
          true
        else 
          false
        end
    end
end
