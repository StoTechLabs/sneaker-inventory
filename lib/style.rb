class Style

	@@allstyles = []

	attr_reader :name, :color, :shoes

	def initialize(attributes)
		@name = attributes[:name]
		@color = attributes[:color]
		@shoes = []
	end

	def save
		@@allstyles << self 
	end

	def Style.all
		@@allstyles 
	end

	def add_shoe(shoe)
		@shoes << shoe
	end






end	