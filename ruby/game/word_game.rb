class WordGame
	attr_accessor :word
	attr_reader :guess_count, :is_over
	
	def initialize(word)
		@word = word
		@word_cover = 
		@guess_count = word.length
	    @is_over = false
	    puts "Great! let the guessing game, Begin!"
	end
	
	def check_word(guessed_word)
		@guess_count -= 1
		if @guess_count == 0 && guessed_word 
			@is_over = true
		end
		if guessed_word == @word
			
			@is_over = true
		else
			false
		end
	end
end

puts "Welcome to our word-guessing game!"
puts "Please input a word for someone to guess."

word = gets.chomp

game = WordGame.new(word)