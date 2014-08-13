class Style

	@@allstyles = []

	attr_reader :name, :color

	def initialize(attributes)
		@name = attributes[:name]
		@color = attributes[:color]
	end

	def save
		@@allstyles << self 
	end

	def Style.all
		@@allstyles 
	end






end	