require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

class Assistant

  #need a method to get customer input

  def check_order(order, menu, customer)
    total_check=0
    order.order_detail.each do |order_item|
      menu.dishes.each do |dish|
        if order_item[:dish]==dish.name
          total_check += dish.price*order_item[:item_count]
        end  
      end  
    end
    if total_check==order.order_total_cost
      order.confirm_order(customer, assistant)
    else
      raise "Sorry you inputted the wrong amount."
    end            
  end  

  def confirm_order(customer)
    time=Time.new
    hour = time.strftime("%I").next
    minutes = time.strftime("%M")
    print_time = hour+':'+minutes
    puts "Thanks #{customer.name}, your order was placed and will be delivered at #{print_time}" 
  end  
  
end  