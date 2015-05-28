require 'customer'

describe 'Customer' do
  let(:customer) { Customer.new 'Julian', '07500456388' }

  it 'has attributes of name and number' do
    expect(customer).to have_attributes(name: 'Julian', number: '07500456388')
  end
end
