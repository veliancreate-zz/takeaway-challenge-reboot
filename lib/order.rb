class Order
  attr_accessor :order_detail, :menu

  def initialize(options = {})
    @order_detail = []
    @total_cost = 0
    @menu = options.fetch(:menu, [])
  end

  def add_item(dish)
    @order_detail << dish
  end

  def total_cost
    @order_detail.each do |order_item|
      @menu.dishes.each do |dish|
        @total_cost += dish.price if order_item.name == dish.name
      end
    end
    @total_cost
  end
end
