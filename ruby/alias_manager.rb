# take a spy's real name (e.g) "Felicia Torres"
# creates a fake name

# swaps the first and last name

# changes all of the vowels to the next vowel in 'aeiou', and all the consonants to the next consonant

# things to consider
# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?

# separate into different methods
# potential methods

# next_vowel
# next_cons

# get_name_ready

 


def get_name_ready(name_input)
  # split first and last name

  alias_name = name_input.split(' ')
  # swap the first and last name
  alias_name[0], alias_name[1] = alias_name[1], alias_name[0]
  # change back to string, lowercase, then separate each char
  alias_name = alias_name.join(' ').downcase.chars
  # p "read" alias_name
end  

def to_change(alias_name)
  # see if there needs to be a change
  # go through each character, if vowel call the vowel method
  
# THIS PART ISNT WORKING> HOW DO I PASS THINGS THROUGH IT??
  alias_name.each do|char| yield char
  end	
  # elseif consonant call the consonant vowel,
  # else do nothing
  yield char
end  

def vowel_shift(char)
	vowels   = ['a','e','i','o','u']
	# scan to see what letter it is

end

def con_shift(char)
	consonants = ['b', 'c', 'd', 'f', 'g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

end	

def shift(letter_array, char)
	# check to see if its the last one . edge case
	if char == letter_array[-1]
		char = letter_array[0]
	end	
		
	# letter_array[char] = letter_array[char].next
	# p letter_array[char]	
	# letter_array
	
end


hello = ['a','e','i','o','u']

p shift(hello, 'u')


def start(string)
	get_name_ready(string)
	to_change(char)
	p  "start"
end

# get_name_ready("Natalie Ruiz")
# to_change("Natalie Ruiz")
# start("Natalie Ruiz")

