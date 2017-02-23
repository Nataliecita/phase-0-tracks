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
  # p alias_name
end  

def to_change(get_name_ready)
  # see if there needs to be a change
  # go through each character, if vowel call the vowel method

  # elseif consonant call the consonant vowel,
  # else do nothing
end  




get_name_ready("Natalie Ruiz")
