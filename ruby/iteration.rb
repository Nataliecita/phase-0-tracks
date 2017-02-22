# # def names
# #   name2 = "harini"
# #   puts "before code block"
# #   yield("natalie",name2)
# #   puts "after code block"
# # end

# # names {|x,name2| puts "#{x} and #{name2} WWOOOOO"}


# fruits = {"apricot" => "VitaminA",
#           "apple" => "Vitamin B1",
#           "banana" => "Vitamin B2",
#           "blackberries" => "Vitamin B6",
#           "cherries" => "Vitamin C"
# }

# # fruits.each { |fruit, vitamin| puts "In this #{fruit} we have #{vitamin}"}

# # fruits.each do |fruit, vitamin|
# #   puts "This is using Do. In this #{fruit} we have #{vitamin}"
# # end

# new_variable = fruits.map do |fruit, vitamin|
#   puts "This is using .map. In this #{fruit} we have #{vitamin}"
# end
 
# # puts new_variable 
# # puts fruits

colors = [ "green", "blue", "red", "orange", "white"]
new_colors = []
# colors.each { |color| puts color.capitalize}
# colors.each do |color| 
#   new_colors << color.upcase
# end

# p colors
# p new_colors


# method that iterates through the items, deleting any that meet a certain condition

# <<<<<<<------------------Array ---------------->>>>>>>>>
colors.map! { |color| color.upcase}
#puts  "The modifies colors array is #{colors}"

def mul_five
  numbers = [1,3,5,7,10,13,15,20,25]
  puts "The original array is #{numbers}"
  numbers.delete_if {|num| num % 5 != 0}
  #numbers.drop_while {|num| num < 10}
  puts "The modified array is #{numbers}"
end 

# <<<<<<<------------------HASH ---------------->>>>>>>>>
def country_miles
  places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
  puts places

  new_hash = places.reject {|country, miles_away| miles_away > 2000}
  p new_hash
  new_hash.each do |country, miles_away|

  puts "We can travel to #{country} because it is closer and airfare is expensive!"
  end
end


#A method that filters a data structure for only items that do satisfy a
#certain condition

# <<<<<<<------------------Array ---------------->>>>>>>>>
def more_five 
  numbers = [1,2,3,4,5,7,10,13,15]
  puts "The original array is #{numbers}"
  numbers.keep_if {|num| num > 5}
  #numbers.drop_while {|num| num < 10}
  #numbers.insert(1,8)
  #numbers.insert(-3,11,12)
  puts "The modified array is #{numbers}"
end 

# <<<<<<<------------------HASH ---------------->>>>>>>>>
def travel_easy
  places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
   puts places

  new_hash = places.select! {|country, miles_away| miles_away > 2000}
  p places
  places.each do |country, miles_away|

  puts "We can travel to #{country} because we work at Google and make buku bucks and airfare is expensive but we don't care!"  
  end
end  


#method that filters a data structure for only items satisfying a
#certain condition 

# <<<<<<<------------------Array ---------------->>>>>>>>>
def names     
    vowels = "aeiou" 
    new_name =[]
    name_length = []
  name_list = ["natalie","harini","adamn","monisha","jenny","eric","aiena","ibrahim"]   
  puts "The original array is #{name_list}"   
    name_list.each do |name|
      if vowels.index(name.split('')[0]) != nil 
        new_name << name 
      end 
      if name.length > 5
        name_length << name
      end
    end
     puts "Names starting with vowels:\n #{new_name}\nNames greater than 5 letters:\n#{name_length}"
end

# <<<<<<<------------------HASH ---------------->>>>>>>>>
def only_place

  places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
  puts places

  p places.values_at(:Peru)
end

#A method that will remove items from a data structure until the condition in
#the block evaluates to false

# <<<<<<<------------------Array ---------------->>>>>>>>>
def delete_num_until_2 
  numbers = [1,3,5,7,9,10,13,15,20,21,23,24,25]
  # puts "The original array is #{numbers}"
  numbers.each do |num|
    while numbers.length > 2
      puts "These are our numbers #{numbers}"
      numbers.delete_at(-1)
    end  
  end  
  puts "The modified array is #{numbers}"
end 




