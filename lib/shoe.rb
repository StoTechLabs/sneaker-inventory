class Shoe

	@@allshoes =[]

	attr_reader :size, :quantity

	def initialize(attributes)
		@size = attributes[:size]
		@quantity = attributes[:quantity]
	end

	def save
		@@allshoes << self 
	end

	def Shoe.all
		@@allshoes
	end



end	