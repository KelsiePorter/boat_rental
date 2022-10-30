require 'pry'
require './lib/boat'
require './lib/renter'

RSpec.describe Boat do
  it 'boat has a type and a price_per_hour' do 
    kayak = Boat.new(:kayak, 20) 

    expect(kayak.type).to eq(:kayak)
    expect(kayak.price_per_hour).to eq(20)
  end

  it 'boat is rented for 0 hours by default' do 
    kayak = Boat.new(:kayak, 20) 

    expect(kayak.hours_rented).to eq(0)
  end

  it 'boat can be rented by the hour' do 
    kayak = Boat.new(:kayak, 20) 

   kayak.add_hour
   kayak.add_hour
   kayak.add_hour

    expect(kayak.hours_rented).to eq(3)
  end
end
  
