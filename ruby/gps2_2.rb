# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Define a method that takes a string argument
def create_list(item)
  list = {}
# Separate individual strings
  array_of_items = item.split()
  
  array_of_items.each do |food|
# set default quantity
    list[food] = 1
  end  
# print the list to the console [can you use one of your other methods here?] 
  p list
end


# Method to add an item to a list
# input: item name and optional quantity, list
def add_item(new_list, item, quantity)
# steps: Insert any new items and their quantites into the hash
  if new_list.include?(item)
    new_list[item] += quantity
  else
     new_list[item] = quantity
  end
# output: print and return new items and quantities
  p new_list
end

#Method to remove an item from a list
#input: item name and quantity, list
def remove_item(new_list, item)
# steps: remove an item and its quantity from the hash
  new_list.delete(item)
  p new_list 
end

# Method to update the quantity of an item
# input: item name and quantity, list
def update_quantity(new_list, item, x)
# steps: find item name and update its quantity
  new_list.each { |k, v| new_list[item] = x }
  p new_list
end

# Method to print a list and make it look pretty
def create_pretty_list(new_list)
# input: make list pretty
  puts "My Shopping List:"
# steps: write out a more user-friendly list
  new_list.each do |food, quantity|
    puts "#{quantity} #{food}"
  end
end

##REFACTOR--- MOVE ALL DRIVER CODE TO BOTTOM
#Future thoughts... How to allow a grocery item to be two words ex) ice cream

# output: [what data type goes here: hash]
new_list = create_list("carrots apples cereal pizza")
# output: print and return the new list
add_item(new_list, "apples", 5)
# output: print and return the new list     
remove_item(new_list, "carrots")
# output: print and return the new list
update_quantity(new_list, "pizza", 20)
# output: print the lovely visual
create_pretty_list(new_list)

#Release 3 Test Solution
another_list = create_list("lemonade tomatoes onions ice-cream")
# add_item(another_list, "cheetos", 3)
add_item(another_list, "lemonade", 2)
add_item(another_list, "tomatoes", 3)
add_item(another_list, "onions", 1)
remove_item(another_list, "lemonade")
update_quantity(another_list, "ice-cream", 1)
create_pretty_list(another_list)


#Reflect
# What did you learn about pseudocode from working on this challenge?
  #The more detailed the pseudocode, the more focused my code is. It helps to break down smaller pieces.
# What are the tradeoffs of using arrays and hashes for this challenge?
  #Arrays have no key/value pairs, it's only a list. For this challenge, we needed to use a hash to implement a key/value pair.
# What does a method return?
  #A method returns what you tell it to return, in this case hashes and printed lists.
# What kind of things can you pass into methods as arguments?
  #You can pass data such as strings, integers, booleans, and data sets, such as a hash and or array.
# How can you pass information between methods?
  #You can pass information between methods by storing it in a variable.
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #I have a better understanding of how to pass different data types through multiple methods to make a program work as a whole without a set class. I wouldn't say my learning is solidified, but this challenge definitely helped guide more understanding.