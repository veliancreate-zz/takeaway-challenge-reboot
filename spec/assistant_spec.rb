require 'assistant'

describe 'Assistant' do
  let(:assistant) { Assistant.new }
  let(:order) { double :order, total_cost: 100}
  let(:customer) { double :customer, name: 'Julian', number: '07500456388', amount_input: 10 }

  it 'can raise an error if the order total cost is wrong' do
    expect { assistant.check_order(customer, order) }.to raise_error
  end
end
