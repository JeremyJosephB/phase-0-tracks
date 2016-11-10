class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(bark_number)
		i = 0
		until i == bark_number
			puts "Woof!"
			i += 1
		end
	end  

	def roll_over
	 	puts '*rolls over*'
	end

	def dog_years(human_years)
		puts human_years * 7
	end

	def hand_shake
		puts "*gives paw*"
	end
end

# fido = Puppy.new

# doggy = Puppy.new

# fido.fetch("ball")

# fido.speak(3)

# fido.roll_over

# fido.dog_years(6)

# fido.hand_shake

class Kitten
	def initialize
		puts "Initializing new Kitten instance..."
	end

	def cuddle
		puts "*cuddles legs*"
	end

	def cat_years(human_years)
		puts human_years * 7
	end
end

cat_house = []

i = 0

until i == 50 
	cat_house << Kitten.new
	i += 1
end

cat_house.each {|kitten| kitten.cuddle}