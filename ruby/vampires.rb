
puts "Hello! What is your name?"
	name = gets.chomp

puts "In what year were you born?"
	birth_year = gets.chomp.to_i

puts "#{name}, how old are you?"
	age = gets.chomp.to_i
	current_year = Time.now.year

	if age == (current_year - birth_year)
		input = true
	else
		input = false
	end

puts "Our cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

	if garlic_bread == "y"
	  order_some = true
	else
	  order_some = false
	end

puts "Would you like to enroll in our health insurance? (y/n)"
	health_insurance = gets.chomp

	if health_insurance == "y"
	  enroll = true
	else
	  enroll = false
	end

# if the employee got their age right, and is willing to eat garlic bread or sign up for insurnace
	if age && (garlic_bread || health_insurance)
		puts "Probably not a vampire."

# # if age is wrong and hates garlic bread or waves insurance
	elsif !age && (garlic_bread || health_insurance)
		puts "Probably a vampire."

# # if age is wrong, hates garlic bread and doesn't want insurance
	elsif !age && (garlic_bread && health_insurance)
		puts "Almost certainly a vampire"

	# If name is "Drake Cula" or "Tu Fang"
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire"
	else
		puts "Results inconclusive"
	end


# Notes
	 # 
# Stick to a loop based off the string "y"
# garlic_bread.upcase() == 'Y'
# health_insurance.upcase() == 'Y'

