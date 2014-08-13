require 'style'
require 'rspec'

describe Style do 
	
	it 'should initialize with a size and quantity' do
		test_style = Style.new({:name => 'Jordan Future', :color => 'Black'})
		expect(test_style).to be_an_instance_of Style
	end

	it 'should show style name' do
		test_style = Style.new({:name => 'Jordan Future', :color => 'Black'})
		expect(test_style.name).to eq 'Jordan Future'
	end

	it 'should save all styles to a style array' do
		test_style = Style.new({:name => 'Jordan Future', :color => 'Black'})
		expect(test_style.save).to eq [test_style]
	end

	it 'should be able to add a shoe to the style' do
		test_style = Style.new({:name => 'Jordan Future', :color => 'Black'})
		test_shoe = Shoe.new({:size => 12, :quantity => 6})
		test_style.add_shoe(test_shoe)
		expect(test_style.shoes).to eq [test_shoe]
	end




end