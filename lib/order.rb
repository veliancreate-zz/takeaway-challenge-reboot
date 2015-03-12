class Order

  attr_accessor :order_detail, :total_cost

  def initialize
    @order_detail=[]
    @total_cost=0
  end  

end  