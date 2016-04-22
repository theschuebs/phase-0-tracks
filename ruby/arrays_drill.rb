#Initialize an empty array and store it in a variable (you can choose the name).
blackhawks = []
#Print the variable using p.
p blackhawks


#Add five items to your array. Print the array.
blackhawks << "Anisimov"
blackhawks << "Crawford"
blackhawks << "Desjardins"
blackhawks << "Hossa"
blackhawks << "Kane"
p blackhawks


# Delete the item at index 2. Print the array.
blackhawks.delete_at(2)
p blackhawks

# Insert a new item at index 2. Print the array.
blackhawks.insert(2, "Keith")
p blackhawks

# Remove the first item of the array without having to refer to its index. Print the array.
blackhawks.shift
p blackhawks

# Ask the array whether it includes a certain item. # Print the result of this method call
# (labeled so it prints as more than just an isolated boolean value without any context.)
p "Is Patrick Kane still on the team?"
if blackhawks.include?("Kane")
	p "YES!"
else
	p "No"
end

# Initialize another array that already has a few items in it.
player_num = [15, 50, 11, 88]

# Add the two arrays together and store them in a new variable. Print the new array.
blackhawk_numbers = blackhawks + player_num
p blackhawk_numbers
