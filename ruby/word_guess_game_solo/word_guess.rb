# Pseudocode a class for a word-guessing game that meets the following specifications. Assume your driver code will handle input and output as far as the user is concerned. In other words, write a class designed for a computer program to use, not one designed for a human to use directly, then use driver code to bridge the gap between human and Ruby object.

# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

# ---name the class
class Wordgame
	attr_reader :word, :is_over
	attr_accessor :update_word 

	def initialize(word)
		# slpit word to chars and store in an array
		@word = word.split("")
		@is_over = false		
	end 


	def get_word
		@word
	end	

	def word_output
		@word_output = @word
		@word_output.map! do |letter|
			letter = ""
		end
		@word_output
	end	

	def update_word(letter)
	end	



	# but then word should be an array...


# ---what to pass on initialize?
# pass one argument whihc will be the word


# ----what should be overwritten?
# guesses are limited, so they should be overwritten each time there is a guess
# guesses_allowed

# ----what should be readable??

#------ What methods should there be?

# guesses_allowed based on length of word

# update word
# feedback
	# should just return the word from update word?

#game won


end	




