#USER INTERFACE 
#until the user types 'quit' continue the program.
# 	#Run the program
# 		#If the user types a name, store it in the data type and get another name.
# 		#If the user types quit, end the program. Print out the data type.
# 		if original_name == "quit"
# 		#Create a hash to store user input names as keys and new agent names as values. Print out info.
# Vussit Gimodoe
name_hash = {}
# index = 0
original_name = ''

	until original_name == 'quit'
		
		def name_encryptor(original_name)
			reversed_name = original_name.split(' ').reverse.join(' ')
			reversed_name = reversed_name.split('')
			reversed_name.map! { |letter| letter.next }
			reversed_name.join('')
		end

	puts "Enter name for encryption or type 'quit'"
	original_name = gets.chomp

	if original_name == 'quit'
		puts
	end

		encrypted_name = name_encryptor(original_name)
		name_hash[original_name] = encrypted_name
		name_hash.each { |original_name, encrypted_name| puts "#{original_name} is also known as #{encrypted_name}"}

		# index += 1

	end

			# p encrypted_name = name_encryptor(original_name)
