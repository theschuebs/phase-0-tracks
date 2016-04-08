#Create Santa class
class Santa
	#refactor the getter methods using attr_reader
	attr_reader :gender, :ethnicity
	attr_accessor :age, :reindeer_ranking

#Define multiple instance methods including initialize method
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = rand(0..140)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

#Getter methods have been refactored using attr_reader
	# def gender
	# 	@gender
	# end

	# def ethnicity
	# 	@ethnicity
	# end

# Setter methods
	def celebrate_birthday=(age)
		@age = @age + 1
	end

	def get_mad_at(reindeer_name)
		index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.delete_at(index)
		@reindeer_ranking.push(reindeer_name)
		puts "Updating the reindeer ranks: #{@reindeer_ranking}" 
	end

end

# #Data bucket
santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
gender.length.times do |i|
  santas << Santa.new(gender[i], ethnicity[i])
end

#DRIVER CODE
#Create new class instance
santa = Santa.new(gender, ethnicity)

#Call instance methods on new class instance
santa.speak
santa.milk_and_cookies("Thin Mint")
puts "This santa is a #{santa.ethnicity.shuffle[0]} #{santa.gender.shuffle[0]}" 
santa.get_mad_at("Vixen")
# puts "Santa is turning #{santa.celebrate_birthday(5)}!"
p santa.celebrate_birthday = "Santa is turning #{@age}!"
