class Customer
  attr_reader :name, :number
  attr_accessor :amount_input, :order

  def initialize(name, number)
    @name = name
    @number = number
  end
end
