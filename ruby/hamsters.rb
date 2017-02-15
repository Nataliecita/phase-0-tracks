puts "What is the hamster's name?"
hamster = gets.chomp

puts "From a scale from 1-10, what is the hamster's volume level?"
volume = gets.chomp.to_i

puts "What is the fur color?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption? (yes/no)"
adoption = gets.chomp

puts "What is the hamster's age?"
age = nil
age = gets.chomp.to_i

if age == 0
  age = nil
end  

if age == nil
  age = "unknown"
end  

if adoption == "yes"
  adoption = "is"
else
  adoption = "is not"
end  

puts "The hamster's name is #{hamster}. The volume level is #{volume}. #{hamster} has #{color} fur. It #{adoption} good candidate for adoption. The hamster's age is #{age}."


