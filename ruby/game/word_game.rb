class WordGame
	attr_accessor :word
	attr_reader :guess_count, :is_over
	
	def initialize(word)
		@correct_word = word
		@guessed_word = []
		@guess_count = word.length
	    @is_over = false
	    puts "Great! let the guessing game, Begin!"
	    @correct_word.chars.each_with_index {|letter,index| @guessed_word[index] = "?"}
	end
	
	def check_guess(guessed_letter)
		@guess_count -= 1
		if @guess_count == 0 && guessed_letter 
			@is_over = true
		elsif guessed_letter == @word
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