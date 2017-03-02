# take a spy's real name (e.g) "Felicia Torres"
# creates a fake name



# changes all of the vowels to the next vowel in 'aeiou', and all the consonants to the next consonant

# things to consider
# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?

# separate first and last name
def split_name(name)
  name = name.split(' ')
end  


# swaps the first and last name
def swap_names(name)
  name = name.reverse
end

# p swap_names(split_name("Natalie Ruiz"))


