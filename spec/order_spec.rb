require 'order'

RSpec.describe 'Order' do
  let(:menu) do
    double('menu', dishes: [curry, pasta, pizza, burger])
  end
  let(:curry) { double('dish', name: 'curry', price: 10) }
  let(:pasta) { double('dish', name: 'pasta', price: 20) }
  let(:pizza) { double('dish', name: 'pizza', price: 30) }
  let(:burger) { double('dish', name: 'burger', price: 40) }
  let(:order) { Order.new }
  before(:each) do
    order.menu = menu
  end
  def add_items
    order.add_item(pizza)
    order.add_item(curry)
    order.add_item(pasta)
    order.add_item(burger)
  end
  it 'has attributes of order_detail and total_order' do
    expect(order).to have_attributes(order_detail: [], total_cost: 0, menu: menu)
  end
  it 'can add dishes to an order' do
    add_items
    expect(order.order_detail).to eq([pizza, curry, pasta, burger])
  end
  it 'can total an order' do
    add_items
    expect(order.total_cost).to eq(100)
  end
end
