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

 # SUMMARY
 # methods working standing alone
 # -shift
 # -get_name_ready


 # set global variables
vowels = ['a','e','i','o','u']
consonants = ['b', 'c', 'd', 'f', 'g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

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
 alias_name.each do |char|
 	if char.ord == 97 || char.ord == 101 || char.ord == 105 || char.ord == 111 || char.ord == 117 
 		puts "vowel"
 	elsif char.ord == 32
 		puts "space"
 	else
 		puts "con"	
 				
 	 	
 	 end 
 	end
 #HOW DO I PASS THINGS THROUGH IT??
	
  # elseif consonant call the consonant vowel,
  # else do nothing
end  

# p ' '.ord
to_change(['n',' ','t','e'])

def vowel_shift(char)
	vowels   = ['a','e','i','o','u']
	# scan to see what letter it is
	# i need this to return the letter and the array
end

def con_shift(char)
	consonants = ['b', 'c', 'd', 'f', 'g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	# i need this to return the letter and the array

end	

def shift(letter_array, char)

	# shift should come from either vowel_shift or con_shift
	# check to see if its the last one . edge case
	new_letter = nil
	if char == letter_array[-1]
		new_letter = letter_array[0]
	else
	new_position = letter_array.index(char) + 1 
		new_letter = letter_array[new_position]
	end
	
end

# DRIVER CODE for shift method
# hello = ['a','e','i','o','u']

# p shift(hello, 'a')
# p shift(hello, 'e')
# p shift(hello, 'i')
# p shift(hello, 'o')
# p shift(hello, 'u')
# p shift(hello, 'a')




def start(string)
	get_name_ready(string)
	to_change(char)
	p  "start"
end

# get_name_ready("Natalie Ruiz")
# to_change("Natalie Ruiz")
# start("Natalie Ruiz")

