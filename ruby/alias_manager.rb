#USER INTERFACE 
#until the user types 'quit' continue the program.
loop {	
	puts "Hello secret agent, please enter your first and last name (To end, type 'quit'):"
	original_name = gets.chomp
	#Run the program
		#If the user types a name, store it in the data type and get another name.
		#If the user types stop, end the program. Print out the data type.
		if original_name == "quit"
		#Create a hash to store user input names as keys and new agent names as values. Print out info.
			name_hash = {}
				puts name_hash.each { |original_name, new_name| puts "#{original_name} is also known as #{new_name}"}
			break
		else 
			puts name_hash
		end
}

#Create a method that takes a spy's real name and creates a fake name
def name_reverse
	name = "Felicia Torres"
	#split the name string into two arrays and reverse 
  reversed_name = name.split(' ').reverse
  #turn the two arrays back into one string
  letters = reversed_name.join('')

end 

p name_reverse

def character_converter
	#Change string to individual characters
		name = "Felicia Torres".split('')
	#identify vowels and change to next vowel
		name.map! { |name| name.gsub(/[aeiou]/, "*" )}
	#Change individual characters back into a string
		new_name = name.join('')

end

p character_converter

#Change all the consonants to the next consonants
