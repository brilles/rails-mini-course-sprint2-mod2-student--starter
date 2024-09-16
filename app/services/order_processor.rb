class OrderProcessor
  class OrderProcessor < StandardError
  end

  def initialize(order)
    @order = order
    @products = order.products
  end

  def ship
    if not products_available?
        return false
    
    @products.each { |product| product.reduce_inventory}
    @order.ship
  end

  private
  def products_available?
    @products.all? { |product| product.available? }
  end
end
