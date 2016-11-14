class WordGame
	attr_accessor :word
	attr_reader :guess_count, :is_over
	
	def initialize(word)
		@correct_word = word
		@guessed_word = []
		@wrong_guesses = []
		@guess_count = word.length
	    @is_over = false
	    p "Great! let the guessing game, Begin!"
	    @correct_word.chars.each_index {|index| @guessed_word[index] = "?"}
	    
	end
	
	def check_guess(guessed_letter)
		@guess_count -= 1
		# what this was supposed to do is iteriate through @guessed_word
		# whenever the player makes a correct guess the "?" is replaced with
		# the letter in the correct spot. Ex. "word" game.check_guess("w") "w???"
		# and if the guess was incorrect it would put it in an array of incorrect guesses
		@guessed_word.each do
			if @correct_word.include?(guessed_letter) == true
				swap_index = @correct_word.index(guessed_letter)
				@guessed_word[swap_index] = guessed_letter
			elsif @correct_word.include?(guessed_letter) == false
				@wrong_guesses << guessed_letter
				p "Sorry, try again!"
			end
		end
		p @guessed_word
		p @wrong_guesses
	end
	
	def did_player_win
		if @guess_count == 0 && @guessed_word.join("") != @word
			@is_over = true
			puts "Sorry you lose, maybe next time."
		elsif @guessed_word.join("") == @word
			@is_over = true
			puts
		else
			false
		end
	end
end

puts "Welcome to our word-guessing game!"
puts "Please input a word for someone to guess."

word = gets.chomp
game = WordGame.new(word)

puts "Make a guess!"

guessed_letter = gets.chomp
game.check_guess(guessed_letter)

while !game.is_over
	p @guessed_word
	puts "Make a guess!"
	guessed_letter = gets.chomp
	game.check_guess(guessed_letter)
	game.did_player_win
end