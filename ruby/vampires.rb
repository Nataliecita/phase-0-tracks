# ask how many employees
puts "How many employees will be processed?"
employees = gets.chomp.to_i


while employees != 0
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



 #what does...
  #2017 - year == age
  #...return?
  #Once you figure out it's return see if you can refactor setting valid_age



  # make sure age is valid
  if (2017 - year) == age
    valid_age = true
  # else
  #   valid_age = false
  end  

  # Start checking conditions
  if valid_age && (garlic == "yes" || insurance == "yes")
    result = "Probably not a vampire."
  elsif !valid_age && (garlic == "no" || insurance =="no") 
    result = "Probably a vampire"   
   else
      # condition is here because its the one that is missing. age false, name ok, but they like garlic and want insurance 
    result = "Results inconclusive"       
  end  

  # separate this last one. Otherwise, it will never be checked because previous one meets the condition
  if !valid_age && (garlic == "no" && insurance =="no") 
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


  # update employees
  employees -= 1
  puts result
end  

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
