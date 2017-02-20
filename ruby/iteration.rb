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
p colors

colors.map! { |color| color.upcase}

p colors

