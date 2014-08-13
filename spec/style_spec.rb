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




end