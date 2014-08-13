require 'shoe'
require 'rspec'

describe Shoe do 
	
	it 'should initialize with a size and quantity' do
		test_shoe = Shoe.new({:size => 12, :quantity => 6})
		expect(test_shoe).to be_an_instance_of Shoe
	end

it 'should show style name' do
		test_shoe = Shoe.new({:size => 12, :quantity => 6})
		expect(test_shoe.size).to eq 12
	end



end