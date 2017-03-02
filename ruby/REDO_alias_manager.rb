# take a spy's real name (e.g) "Felicia Torres"
# creates a fake name
# changes all of the vowels to the next vowel in 'aeiou', and all the consonants to the next consonant

# separate first and last name
def split_name(original_name)
  original_name = original_name.downcase.split(' ')
end  

# swaps the first and last name
def swap_names(name_split)
	# swap and join and then split
  name_split = name_split.reverse.join(' ').chars
end

# create vowel and consonant Constants
Vowel = ["a","e","i","o","u","a"]
Consonant =["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","b"]

def shift_letter(name_split)
	name_split.map! do |letter|

		if Vowel.include?(letter)
			new_position = Vowel.index(letter) + 1
			new_letter = Vowel[new_position]
		elsif Consonant.include?(letter)
			new_position = Consonant.index(letter) + 1
			new_letter = Consonant[new_position]
		else
			new_letter= " "			
		end	
	end	
end	

# Create hash that collects names
Spy_identity = {}

def change_name(original_name)
	name_split = swap_names(split_name(original_name))
	alias_array = shift_letter(name_split)

	# join each letter together and separate an array of first and last
	alias_name = alias_array.join('').split(" ")

	# capitalize and join to a string
	alias_name = alias_name.map(&:capitalize).join(" ")

	# store in hash
	Spy_identity[original_name] = alias_name
end

# UI
puts "What name will you want to change? Type 'quit' when you are done"
loop do
	original_name = gets.chomp

	break if original_name == 'quit'
	puts change_name(original_name)
end	

Spy_identity.each {|key, value| puts "#{key} is actually #{value}." }

# How can i refactor the code from shift letter to call just another method that makes that shift and just takes in the vowel...
# also why did i have to make my Spy_identity a constant, I thought it would be okay since it was a global variable that then the method change_name would still be able to access it. 







