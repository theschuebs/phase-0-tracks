#build a ruby program that asks the user for following data and stores them in variables:
#hamster's name (string)
#volume level from 1 to 10 (integer)
#fur color (string)
#is the hamster a good candidate for adoption? (boolean)
#estimated age (if this is blank, set variable for estimated age to nil)

puts "What is your hamster's name?"
hamster_name = gets.chomp

puts "What is your hamster's volume level? (On a scale of 1 to 10)"
volume_level = gets.chomp.to_i

puts "What is your hamster's fur color?"
fur_color = gets.chomp

puts "Is your hamster a good candidate for adoption?(Y/N)"
adoption_candidate = gets.chomp

puts "What is your hamster's age?"
estimated_age = gets.chomp.to_i

	puts "My hamster's name is #{hamster_name}."
	puts "#{hamster_name}'s volume level is a #{volume_level}."
	puts "#{hamster_name} has #{fur_color} fur."

	if adoption_candidate == "Y"
			puts "Yes, #{hamster_name} is a great candidate for adoption!"
	else
			puts "No, #{hamster_name} is not a good candidate for adoption."
	end


	# if estimated_age != nil
	# 	puts "#{hamster_name}'s age is #{estimated_age}."
	# end
	if estimated_age = integer
		puts "My hamster's age is #{estimated_age}"
	end
	 unless estimated_age == nil
		puts "It's ok, we will find out."
	end


	# else
	# 	puts "My hamster's age is #{estimated_age}"
	# end


