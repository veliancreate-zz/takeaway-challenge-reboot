require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

class Assistant
  def time
    time = Time.new
    min = time.min
    hour = time.hour + 1
    "#{hour}:#{min}"
  end

  def send_text(name, time)
    account_sid = 'AC97e1edfa242b4d35325b33c03a2d86cc'
    auth_token = 'e9f9fba2c994c1ba29c17504147943f6'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.messages.create(body: 'Hello ' + name + ', Your order will be delivered at' + ' ' + time,
                            to: '+447500456388',
                            from: '+441618505867')
  end

  def check_order(customer, order)
    if customer.amount_input == order.total_cost
      send_text(customer.name, time)
    else
      fail 'Sorry you inputted the wrong amount.'
    end
  end
end
