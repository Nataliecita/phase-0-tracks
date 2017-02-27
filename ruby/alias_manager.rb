# take a spy's real name (e.g) "Felicia Torres"
# creates a fake name

# swaps the first and last name

# changes all of the vowels to the next vowel in 'aeiou', and all the consonants to the next consonant

# things to consider
# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?

# collect the names
original_name = ""

names_done = {}

puts "Changing the your agents identity..."

until original_name == 'quit'
  puts "Enter the name of the agent you will like to change. Type 'quit' when you are done."
  original_name = gets.chomp



def get_name_ready(name_input)
  # split first and last name

  alias_name = name_input.split(' ')
  # swap the first and last name
  alias_name[0], alias_name[1] = alias_name[1], alias_name[0]
  # change back to string, lowercase, then separate each char
  return alias_name = alias_name.join(' ').downcase.chars
end  

def to_change(alias_name)
  # see if there needs to be a change
 alias_name.map! do |char|
 	vowels   = ['a','e','i','o','u']
 	consonants = ['b', 'c', 'd', 'f', 'g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

 	if char.ord == 97 || char.ord == 101 || char.ord == 105 || char.ord == 111 || char.ord == 117 
 		# call vowel_shift and send char --> how do i link them??
 		if char == vowels[-1]
		new_letter = vowels[0]
		else
		new_position = vowels.index(char) + 1 
			new_letter = vowels[new_position]
		end
 	elsif char.ord == 32
 		new_letter = " "
 	else
 		if char == consonants[-1]
		new_letter = consonants[0]
		else
		new_position = consonants.index(char) + 1 
			new_letter = consonants[new_position]
		end
 	 end 
 	end
end  


def change_name(original_name)
	get_name_ready(original_name)
	# to_change(alias_name) #alias_name is undefined, so how can I pass instead the return from get_name_ready to the method to_change????
end

final_answer = change_name(original_name)
final_answer = to_change(final_answer)

 p final_answer = final_answer.join.capitalize

end



