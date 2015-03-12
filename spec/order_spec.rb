require 'order'

describe 'Order' do 
  let(:order){Order.new}

  it 'has attributes of order_detail and total_order' do 
    expect(order).to have_attributes(:order_detail=>[], :total_cost=>0)    
  end   
  
end