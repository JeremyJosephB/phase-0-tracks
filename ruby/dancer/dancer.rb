class Dancer
	attr_reader :name
	# I choose to do something of medium complexity because
	# I figured it'd be good practice for writing rspec code.
	# I'm a repeat student whose had problems with rspec testing code.
	attr_accessor :age, :card, :tutu_color

	def initialize(name,age=18,tutu_color = "pink")
		@name = name
		@age = age
		@tutu_color = tutu_color
		@card = []
	end

	def queue_dance_with(dancer)
		 @card << dancer
		 p @card
	end
	def begin_next_dance
		p "Now dancing with #{@card.slice!(0)}."
	end

	def pirouette
		p "*twirls*"
	end

	def bow
		p "*bows*"		
	end

end