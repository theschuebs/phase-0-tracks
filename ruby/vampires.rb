puts "How many employees will be processed?"
num_employees = 0
employees_processed = gets.chomp
while num_employees.to_i < employees_processed.to_i

#User Input and data gathering

puts "Hello! What is your name?"
	name = gets.chomp

puts "In what year were you born?"
	birth_year = gets.chomp.to_i

puts "#{name}, how old are you?"
	age = gets.chomp.to_i

puts "Our cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp

puts "Would you like to enroll in our health insurance? (y/n)"
	health_insurance = gets.chomp
	
num_employees += 1

#Detection Logic
# If name is "Drake Cula" or "Tu Fang"
	if name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire"
	end
	
# if the employee got their age right, and is willing to eat garlic bread or sign up for insurnace
	if age == (2016 - birth_year) && (garlic_bread == "y" || health_insurance == "y")
		puts "Probably not a vampire."
# # if age is wrong and hates garlic bread or waves insurance
	elsif age != (2016 - birth_year) && (garlic_bread == "n" || health_insurance == "n")
		puts "Probably a vampire."
# # if age is wrong, hates garlic bread and doesn't want insurance
	elsif age != (2016 - birth_year) && (garlic_bread == "n" && health_insurance == "n")
		puts "Almost certainly a vampire"
	else
		puts "Results inconclusive"
	end

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."