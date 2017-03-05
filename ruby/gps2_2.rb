# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # take string and separate each word into separate strings
  # set each string as a key within hash table
  # set default to 1
  # add each item to hash
  # use a block to print each item in the hash
# output: shopping_list hash
def create_list(items)
  list = items.split
  shopping_list = {}
  list.each do |item|
    shopping_list[item] = 1
  end
  shopping_list
end
final_list = create_list("banana apple pear")

# Method to add an item to a list
# input: list (shopping_list), item name, and optional quantity
# steps:
  # take string and add as key to hash
  # set default quantity to 1
  # use push method to add item to hash
# output: shopping_list with new item added to end
def add_item(list, item, quantity)
    list[item] = quantity.to_i
    list
end
puts final_list = add_item(final_list, "onions", 2)
# Method to remove an item from the list
# input: item name, shopping_list
# steps:
  # Find index of item name within shopping_list
  # use delete method to remove item name from shopping_list
  # Can combine first two steps with delete_if method
# output: shopping_list without input item
def remove_item(list, item)
    list.delete(item)
    list
end
puts final_list = remove_item(final_list, "apple")
# Method to update the quantity of an item
# input: shopping_list, item name, new quantity
# steps:
  # Find the item within the shopping_list
  # update the value of quantity for the item
# output: shopping_list with new quantity for input item
def update_quantity(list, item, quantity)
    list[item] = quantity.to_i
    list
end
puts final_list = update_quantity(final_list, "banana", 3)
# Method to print a list and make it look pretty
# input: shopping_list
# steps:
  # iterate through hash and use puts
# output: printout of shopping_list
def print_list(grocery_list)
  grocery_list.each { |item, quantity| puts "You need #{quantity} #{item}"}
end
print_list(final_list)

# Release 1 tests:
# grocery_list = make_list("apples bananas oranges")
# add_item(grocery_list, "banana", 8)
# delete_item(grocery_list, "pizza")
# update_quantity(grocery_list, "carrots", 5)
# p print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
# A:I learned that it doesnt have to be complicated and that separating the methods with the input and output made the overall flow easier.

# What are the tradeoffs of using arrays and hashes for this challenge?
# A:In this case using a hash was more beneficial because it allowed us to associate things together with each key. We were able to have that key value pair. In an array, it would have had to be bunched up together. I think it would have been more complicated.

# What does a method return?
# A:a method returns the last line

# What kind of things can you pass into methods as arguments?
#A: You can pass anything really. Strings, numbers, symbols, other methods

#How can you pass information between methods?
#A: you can pass it as if it were another variable

# What concepts were solidified in this challenge, and what concepts are still confusing?
#A: iterating through arrays seemed to get better for me as well as understanding different built in methods. I think the idea of accessing hashes is still troublesome to me, as well as not over complicating things. I need to learn how to break things more apart and keep it simple
