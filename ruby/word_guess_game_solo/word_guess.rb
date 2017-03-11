class Wordgame


	attr_reader :word, :is_over, :guessed_letters, :allowed_guess 

	def initialize(word)
		# slpit word to chars and store in an array
		@word = word.split("")
		@is_over = false	
		@word_output = format_word
		@guessed_letters = []
		@allowed_guess = guesses_allowed
	end 

	def format_word
		@word.map do |letter|
			letter = "_"
		end
	end	

	
	# method that calculates guesses allowed
	def guesses_allowed
		if @word.length  > 12 
			 8
		elsif @word.length <= 12 && @word.length > 8
			 5
		else
			 4
		end			
	end	


	def update_word(guess_letter)
		if @word.include?(guess_letter)
	
			@word.each_with_index do |letter, index|
				if guess_letter == letter
					@word_output[index] = guess_letter
				end	
			end
		else
			if @guessed_letters.include?(guess_letter)
			"You've already used that letter"
			else
				take_away_guess
				@guessed_letters << guess_letter
			end	
		end	
		@word_output
		# check to see if game is over
		is_over
		# display word
		display_word
	end	

	def display_word
		p @word_output
	end	

	 def take_away_guess
	 	@allowed_guess -= 1
	 end	

	def is_over
	
		if @word_output == @word
			puts "We are looking at a winner... Great job"
			@is_over = true
		elsif @allowed_guess < 1
			puts "Sorry. You are not a word guesser master."
			@is_over = true	
		end	

	end	
end	

# DRIVER CODE
game = Wordgame.new("bootcamp")

game.update_word("n")

# p game.word_output
# p game.guessed_letters

game.update_word("p")
 game.update_word("a")

game.update_word("o")
game.update_word("b")
# incorrect guess
game.update_word("x")

 game.update_word("c")
 game.update_word("m")

 game.update_word("t")









