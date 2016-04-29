# <-------------Assignment done as Nighthawk ---------------->
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :reindeer_ranking, :santa_number
	def initialize(gender, ethnicity)
		# puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@santa_number = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday(age)
		celebrate_birthday = age + 1 
		puts "It's my birthday! I'm turning #{celebrate_birthday}!"
	end

	def get_mad_at(reindeer_name)
		index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.delete_at(index)
		@reindeer_ranking.push(reindeer_name)
		puts "Updating the the ranks: #{@reindeer_ranking}"
	end
end

santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
gender.length.times do |i|
	santas << Santa.new(gender[i], ethnicity[i])
end


santa = Santa.new(gender, ethnicity)
santa.eat_milk_and_cookies("Oatmeal Cookie")
santa.gender = puts "female"
santa.celebrate_birthday(16)
p santa.get_mad_at("Vixen")

santa = Santa.new(gender, ethnicity)
50.times do
puts "-- NEW SANTA #{santa.santa_number += 1} --"
puts "I am #{santa.gender.shuffle[0]}"
puts "I am #{santa.ethnicity.shuffle[0]}"
puts "#{santa.celebrate_birthday(age = rand(1..140))}"
puts 
end



# <-------------Assignment done as Pocket Gopher ---------------->
#Create Santa class
# class Santa
# 	#refactor the getter methods using attr_reader
# 	attr_reader :gender, :ethnicity
# 	attr_accessor :age, :reindeer_ranking

# #Define multiple instance methods including initialize method
# 	def initialize(gender, ethnicity)
# 		@gender = gender
# 		@ethnicity = ethnicity
# 		@age = rand(0..140)
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# 		puts "Initializing Santa instance ..."
# 	end

# 	def speak
# 		puts "Ho, ho, ho! Haaaappy holidays!"
# 	end

# 	def milk_and_cookies(cookie_type)
# 		puts "That was a good #{cookie_type}!" 
# 	end

# #Getter methods have been refactored using attr_reader
# 	# def gender
# 	# 	@gender
# 	# end

# 	# def ethnicity
# 	# 	@ethnicity
# 	# end

# # Setter methods
# 	def celebrate_birthday=(age)
# 		@age = age.to_i + 1
# 	end

# 	def get_mad_at(reindeer_name)
# 		index = @reindeer_ranking.index(reindeer_name)
# 		@reindeer_ranking.delete_at(index)
# 		@reindeer_ranking.push(reindeer_name)
# 		puts "Updating the reindeer ranks: #{@reindeer_ranking}" 
# 	end

# end

# # #THE SANTA DATA BUCKET!!
# santas = []
# gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# gender.length.times do |i|
#   santas << Santa.new(gender[i], ethnicity[i])
# end

# #DRIVER CODE
# #Create new class instance
# santa = Santa.new(gender, ethnicity)
# #Call instance methods on new class instance and make 25 new santas
# for i in 1..25 do
#   puts "I am a #{santa.ethnicity.shuffle[0]} #{santa.gender.shuffle[0]} Santa. I am #{santa.celebrate_birthday = (santa.age)} years old and will be turning #{santa.age} on my BIRTHDAY!" 
# end
# santa.speak
# santa.milk_and_cookies("Thin Mint")
# santa.get_mad_at("Vixen")