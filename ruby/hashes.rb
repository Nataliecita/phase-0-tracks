# prompt user for information

puts "Please enter the corresponding information for the client"

puts "Name:"
name= gets.chomp


puts "Age:"
# change to appropriate data type
age = gets.chomp.to_i



puts "Number of children:"
# change to appropriate data type

children = gets.chomp.to_i


puts "Decor theme:"
theme = gets.chomp

puts "Likes to be surprised:"
surprises = gets.chomp
# change to appropriate data type
likes_surprises = surprises == "yes"

# create hash


client =  {name: name,
          age: age,
          children: children,
          theme: theme,
          # use rocket to utilize a different way for a key
          :likes_surprises => likes_surprises 
}

# print the hash out when all questions are answered
puts client

# give user opportunity to update a key
puts "would you like to update something?"
update = gets.chomp

wants_update = update == 'yes'

if wants_update
  puts "what would you like to update?"
  change = gets.chomp.intern
  puts "what will you want to change it to?"

  if change == :age || change == :children
    # change data type to corresponding one
     client[change] = gets.chomp.to_i
  elsif change == :likes_surprises
    surprises = gets.chomp
    likes_surprises = surprises == "yes"
    client[change] = likes_surprises
  else
     client[change] = gets.chomp
  end  
end

    
puts client




