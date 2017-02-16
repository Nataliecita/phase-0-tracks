puts "What is your name?"
name_input = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

# make sure age is valid


if (2017 - year) == age
  valid_age = true
else
  valid_age = false  
end  

if valid_age == true && (garlic == "yes" || insurance == "yes")
  result = "Probably not a vampire."
elsif valid_age != true && (garlic == "no" || insurance =="no") 
  result = "Probably a vampire"       
end  

# separate this last one. Otherwise, it will never be checked because previous one meets the condition
if valid_age != true && (garlic == "no" || insurance =="no") 
  result = "Almost certainly a vampire" 
elsif name_input =="Drake Cula" || name_input == "Tu Fang"
  result = "Definitely a vampire"
end  

# separate otherwise, it wont be checked

# if result == "Almost certainly a vampire" && (name_input =="Drake Cula" || name_input == "Tu Fang")
#   result = "Definitely a vampire"
# else

# end  


p result