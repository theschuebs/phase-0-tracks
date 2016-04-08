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
# output: [what data type goes here: hash]
new_list = create_list("carrots apples cereal pizza")
 

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

add_item(new_list, "apples", 5)


def remove_item(new_list, item)
  new_list.delete(item)
  p new_list 
end
    
remove_item(new_list, "carrots")
  
# input: item name and quantity, list
# steps: remove an item and its quantity from the hash
# output: print and return the new list 

# Method to update the quantity of an item
def update_quantity(list, item, quantity)
end
# input: item name and quantity, list
# steps: find item name and update its quantity
# output: print and return the new list

# Method to print a list and make it look pretty
def create_pretty_list(new_list)
  puts "My Shopping List:"
  new_list.each do |food, quantity|
    puts "#{quantity} #{food}"
  end
end

create_pretty_list(new_list)
# input: make list pretty
# steps: write out a more user-friendly list
# output: print the lovely visual