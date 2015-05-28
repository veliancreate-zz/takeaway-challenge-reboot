require 'menu'

describe 'Menu' do
  let(:menu) { Menu.new }

  it 'should be able to add dishes' do
    pizza = double('pizza', name: 'pizza', price: 30)
    expect { menu.add_dish(pizza) }.to change{
      menu.dishes.count
    }.from(0).to(1)
  end

  it 'should be able to display dishes' do
    pizza = double('pizza', name: 'pizza', price: 30)
    curry = double('curry', name: 'curry', price: 10)
    pasta = double('pasta', name: 'pasta', price: 20)
    burger = double('burger', name: 'burger', price: 40)
    expected_menu = [pizza, curry, pasta, burger]
    menu.add_dish(pizza)
    menu.add_dish(curry)
    menu.add_dish(pasta)
    menu.add_dish(burger)
    expect(menu.dishes).to eq(expected_menu)
  end
end
