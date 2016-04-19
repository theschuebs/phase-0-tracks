#Program greets client and asks for information
puts "Hello valued client, what is your name?"
	name = gets.chomp

puts "#{name}, what is your age?"
	age = gets.chomp

puts "#{name}, how many children do you have?"
	children = gets.chomp

puts "#{name}, what is your favorite decor?"
	decor = gets.chomp

puts "#{name}, do you prefer brick or wood?"
	material = gets.chomp

puts "#{name}, do you want a pool? (y/n)"
	pool = gets.chomp

# Client information should be stored in a hash
client_data = {
	:name => name, :age => age.to_i, :number_of_children => children.to_i, :decor_theme => decor, :material => material, :pool => pool
}

# Print out client information for the user #User reads hash. 
puts client_data

#User given opportunity to update information
puts "Please review your entry. Do you need to update any information(y/n)?"
	input = gets.chomp

#If user needs to update information
if input == "y"
	puts "Enter the category that you need to update:"
		update = gets.chomp
		puts "Enter new response:"
		client_data[update.to_sym] = gets.chomp
		p client_data

#If user does not need to update information
else input == "n"
	puts "You're all set!"
end
 
