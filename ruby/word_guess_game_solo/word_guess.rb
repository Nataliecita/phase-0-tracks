# Pseudocode a class for a word-guessing game that meets the following specifications. Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

class Wordgame
	attr_reader :word, :is_over , :guessed_letters
	attr_accessor :update_word 

	def initialize(word)
		# slpit word to chars and store in an array
		@word = word.split("")
		@is_over = false	
		@word_output = word_output
		@guessed_letters = []
	end 


	def word_output
		@word.map do |letter|
			letter = "_"
		end
	end	

	
	# # method that calculates guesses allowed
	# def guesses_allowed
	# 	if @word.length  > 12 
	# 		allowed_guess = 8
	# 	elsif @word.length <= 12 && @word.length > 8
	# 		allowed_guess = 5
	# 	else
	# 		allowed_guess = 4
	# 	end		 	
	# end	


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
				@guessed_letters <<(guess_letter)
				# take away from allowed guesses
			end	
		end	
		@word_output
	end	

	# def is_over
	# 	is_over = false
	# end	

	# def display_word
	# 	word_output.join
	# end



# ----what should be overwritten?
# guesses are limited, so they should be overwritten each time there is a guess
# guesses_allowed

end	




