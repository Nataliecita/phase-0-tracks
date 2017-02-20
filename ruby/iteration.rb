def names
  name2 = "harini"
  puts "before code block"
  yield("natalie",name2)
  puts "after code block"
end

names {|x,name2| puts "#{x} and #{name2} WWOOOOO"}