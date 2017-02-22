=begin
Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.

=end

# prompt user for information

puts "Please enter the corresponding information for the client"

puts "Name:"
name= gets.chomp
p name


puts "Age:"
age = gets.chomp.to_i

p age

puts "Number of children:"
children = gets.chomp.to_i

p children

puts "Decor theme:"
theme = gets.chomp

p theme

puts "Likes to be surprised:"
surprises = gets.chomp
likes_surprises = surprises == "yes" 

p likes_surprises

