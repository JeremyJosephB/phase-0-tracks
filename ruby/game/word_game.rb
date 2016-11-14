class WordGame
	attr_accessor :word
	attr_reader :guess_count, :is_over
	
	def initialize(word)
		@correct_word = word
		@guessed_word = []
		@guess_count = word.length
	    @is_over = false
	    p "Great! let the guessing game, Begin!"
	    @correct_word.chars.each_index {|index| @guessed_word[index] = "?"}
	    
	end
	
	def check_guess(guessed_letter)
		
	end
	
	def did_player_win
		@guess_count -= 1
		if @guess_count == 0 && @guessed_word != @word
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