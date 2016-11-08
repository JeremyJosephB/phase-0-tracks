class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize

	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

	ethnicities = ["black", "Latino", "white", "Japanese-African",
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	names = ["Pere Noel", "Papai Noel", "Viejo Pascuero", "Dun Che Lao Ren", "Kerstman", 
		"Joulupukki", "	Pere Noel", "Weihnachtsmann", "Kanakaloka", "Mikulas"]

		puts "Initializing Santa instance ..."
		@name = "#{names.sample}"
		@gender = "#{genders.sample}"
		@ethnicity = "#{ethnicities.sample}"
		@age = rand(140)
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts 'That was a good #{cookie}!'
	end

	def about
		puts "Name: #{@name}"
		puts "gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
	end

	def celebrate_birthday
		@age += 1
		puts "Yay,you're #{@age} years old now!"
	end

end

	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
	"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

# It works outside of class just fine
# but when I put it in the class I get this error
# in `get_mad_at': undefined method `index' for nil:NilClass (NoMethodError)

	def get_mad_at(reindeer)
	bad_reindeer = @reindeer_ranking.index("#{reindeer}")
	@reindeer_ranking[bad_reindeer.to_i], @reindeer_ranking[-1] = @reindeer_ranking[-1], @reindeer_ranking[bad_reindeer.to_i]
	puts "Naughty Boy, #{reindeer}!"
	p @reindeer_ranking
	end

# saint_nick = Santa.new("Nicholas", "Male", "Aryan_White")

# saint_nick.about
# saint_nick.speak
# saint_nick.celebrate_birthday
# saint_nick.gender = "not male"
# saint_nick.about
# saint_nick.age
# saint_nick.ethnicity
# get_mad_at("Cupid")

index = 0

until index >= 10

	santa_instance = Santa.new

	puts santa_instance.about

	index +=1
end

# car_database.each do |car|
# 	puts car.turn_signals("left")
# 	puts car.car_horn
# end