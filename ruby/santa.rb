class Santa
	attr_accessor :age, :gender
	attr_reader :ethnicity
	def initialize
		example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@gender = example_genders.sample
		@ethnicity = example_ethnicities.sample
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaapy Holidays!"		
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		puts "Happy birthday, #{@name}!"
		@age += 1
	end

	def get_mad_at(reindeer)
		p @reindeer_ranking
		puts "Naughty boy, #{reindeer}!"
		reindeer_index = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.delete_at(reindeer_index)
		@reindeer_ranking << reindeer
		p @reindeer_ranking
	end
end

saint_nick = Santa.new

# saint_nick.speak
# saint_nick.eat_milk_and_cookies("chocolate chip")
# saint_nick.get_mad_at("Vixen")
# saint_nick.celebrate_birthday
# p saint_nick.age
# # p saint_nick.gender 
# saint_nick.gender = "Female"
# p saint_nick.gender

index = 0

until index == 50
	a = Santa.new
	p a.age
	p a.gender
	p a.ethnicity
	index += 1
end