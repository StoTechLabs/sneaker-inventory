require 'style'
require 'rspec'

describe Shoe do 
	
	it 'should initialize with a size and quantity' do
		test_style = Style.new({:name => 12, :color => 6})
		expect(test_style).to be_an_instance_of Style
	end
end