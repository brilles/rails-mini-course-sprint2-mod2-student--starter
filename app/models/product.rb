class Product < ApplicationRecord
    def available?
        inventory > 0
    end
    
    def reduce_inventory
        update(inventory: inventory - 1)
    end
end
