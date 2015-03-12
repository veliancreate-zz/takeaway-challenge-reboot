require 'assistant'

describe 'Assistant' do 
  let(:assistant){Assistant.new}
  let(:order_wrong){double :order, :order_detail=>[{:dish1=>:curry, :item_count1=>2, :dish2=>:burger, :item_count2=>3}], :order_total_cost=>30}
  let(:customer){double :customer, :name=>'Julian', :number=>"07500456388"}
  let(:menu){double :menu, :dishes=>[curry,burger,pasta,pizza]}
  let(:curry){double :dish, :name=>:curry, :price=>10}
  let(:pasta){double :dish, :name=>:pasta, :price=>20}
  let(:pizza){double :dish, :name=>:pizza, :price=>30}
  let(:burger){double :dish, :name=>:burger, :price=>40}

  it 'can raise an error if the order total cost is wrong' do 
    expect{assistant.check_order(order_wrong,menu)}.to raise_error
  end

  it 'can send a text message if the order is right' do
    
  end  

end  