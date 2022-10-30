require 'pry'
require './lib/boat'
require './lib/renter'

RSpec.describe Renter do 
  it 'renter has a name and credit card number' do 
    renter = Renter.new("Patrick Star", "4242424242424242")
    
    expect(renter.name).to eq("Patrick Star")
    expect(renter.credit_card_number).to eq("4242424242424242")
  end
end