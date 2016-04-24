# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). 
# After all, sometimes users make mistakes! If the designer says "none", skip it. 
# But if the designer enters "decor_theme" (for example), 
# your program should ask for a new value and update the :decor_theme key. 
# (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
# You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.
# Boolean data? vs. Yes?

#Program greets client and asks for information
puts "Hello valued client, what is your name?"
	name = gets.chomp

puts "#{name}, how old are you?"
	age = gets.chomp.to_i

puts "#{name}, how many children do you have?"
	number_of_children = gets.chomp.to_i

puts "#{name}, what is your favorite decor?"
	decor_theme = gets.chomp

puts "#{name}, do you prefer brick or wood?"
	material = gets.chomp

puts "#{name}, do you want a pool? (y/n)"
	pool = gets.chomp

# Client information should be stored in a hash
client_data = {
	name: name, age: age, number_of_children: number_of_children, decor_theme: decor_theme, material: material, pool: pool
}

# Print out client information for the user #User reads hash. 
puts client_data

#User given opportunity to update information
puts "Please review your entry. Do you need to update any information(y/n)?"
	input = gets.chomp

#If user needs to update information
#Consider user friendly format to present to user
if input == "Y".downcase || input == "YES".downcase
	puts "Enter the category that you need to update:"
		update = gets.chomp
		puts "Enter new response:"
		client_data[update.to_sym] = gets.chomp
		p client_data
		puts "You're all set!"

#If user does not need to update information
else input == "n"
	puts "You're all set!"
	puts "#{name}"
	puts "#{age}"
	puts "#{number_of_children}"
	puts "#{decor_theme}"
	puts "#{material}"
	puts "#{pool}"
end


 
