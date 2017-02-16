# ask how many employees
puts "How many employees will be processed?"
employees = gets.chomp.to_i

employees.times do  
  puts "What is your name?"
  name_input = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp
  like_garlic = garlic == 'yes'

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  wants_insurance = insurance == 'yes'

  # make sure age is valid
  valid_age = 2017 - year == age

  # Start checking conditions

  if valid_age && (like_garlic || wants_insurance)
    result = "Probably not a vampire."
  elsif !valid_age && (!like_garlic || !wants_insurance) 
    result = "Probably a vampire"   
   else # age false, name ok, but they like garlic and want insurance 
    result = "Results inconclusive"       
  end  

  # separate this last one. Otherwise, it will never be checked because previous one meets the condition

  if !valid_age && (!like_garlic && !wants_insurance) 
    result = "Almost certainly a vampire"  
  end

  # separate otherwise, it wont be checked even when valid age is true and garlic is yes and insurance no

  if name_input =="Drake Cula" || name_input == "Tu Fang"
    result = "Definitely a vampire" 
  end  

  puts "Also, do you have any allergies? When finished type 'done' "
  allergies = gets.chomp

  until allergies == "none" || allergies == "done" || allergies == "sunshine"
    allergies = gets.chomp
  end

  if allergies == "sunshine"
    result = "Probably a vampire"
  end  

  puts result
end  

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
