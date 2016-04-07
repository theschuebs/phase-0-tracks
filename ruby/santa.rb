#Create Santa class
class Santa
	#refactor the getter methods using attr_reader
	attr_reader :gender, :ethnicity
	# attr_accessor :celebrate_birthday :get_mad_at
#Define multiple instance methods including initialize method
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance ..."
	end

	def santa_characteristics
		puts "I am a #{@gender} #{@ethnicity} santa!"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

#These getter methods have been refactored using attr_reader
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def celebrate_birthday(current_age)
	# 	@celebrate_birthday = current_age +1
	# end

	def celebrate_birthday=(current_age)
		@celebrate_birthday = current_age + 1
	end

	# def get_mad_at(reindeer_name)
	# 	@get_mad_at = reindeer_name
	# end

end

#DRIVER CODE
#Create new class instance
santa = Santa.new("male", "Caucasion")

#Call instance methods on new class instance
santa.santa_characteristics
santa.speak
santa.milk_and_cookies("Thin Mint")
puts "This santa is a #{santa.ethnicity} #{santa.gender}" 
# puts "Santa is turning #{santa.celebrate_birthday(5)}!"
# puts "Updating the reindeer ranks: #{santa.get_mad_at("Vixen")} has been demoted."
santa.celebrate_birthday = "Santa has a birthday to celebrate"
# #Create new class instance
# santa = Santa.new("female", "Latino")

# #Call instance methods on new class instance
# santa.santa_characteristics
# santa.speak
# santa.milk_and_cookies("Samoa")
