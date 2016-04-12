## Add User Interface
	#Allow user to create many instances of the tent class
		#Input: color, brand, guests
		#Output:
	#prompt user for each attribute and convert to appropriate data type
		# Input: 
		puts "What color would you like your tent to be?"
		@color = gets.chomp

		puts "Which brand would you like to purchase?"
		user_brand = gets.chomp

		puts "How many campers are you planning on housing?"
		user_guests = gets.chomp
		#Output: Take user data and store in an array

	#store class instances in an array
		#Input:
		#Output:
	#When user is finished, loop through the array and print out confirmation message about what was created.
		#Input:
		#Output:

# #Implement a class for Release 0 and 1. 
class Tent
	attr_reader :brand, :guests
	attr_accessor :color
	# attr_accessor :color, :brand, :guests
	#Define three attributes and methods, one must take an argument
			# state attributes/characteristics in instance variables
			# instance methods should store action/behaviors. 

	def initialize(color, brand, guests)
		puts "Initializing..."
		# tent color
		@color = color
		# #tent maker's brand name
		@brand = brand
		# Set guest count as 1 through 12
		@guests = guests
		
	end

	def set_up_time(time)
		puts "This #{@color} #{@brand} tent takes #{time.to_i} minutes to set up and sleeps #{@guests} people comfortably."
	end

	def zip
		puts "Uh oh... It's about to rain, make sure to zip up the #{@brand} windows!"
	end

	#Three getter and setter methods to make code readable and writable outside the class. They have been refactored at top of the page.

	# def color
	# 	@color
	# end

	# def brand
	# 	@brand
	# end

	# def guests
	# 	@guests
	# end

	# def color=(new_color)
	# 	@color = new_color
	# end
end

#Data bucket

# tents = []
# color = ["green", "blue", "red", "brown", "beige", "grey", "orange"]
# brand = ["Coleman TM", "North Face TM", "Wenzel TM"]
# guests = [rand(1..12)]
# color.length.times do |i|
#   tents << Tent.new(color[i], brand[i], guests[i])
# end


#Release 0 and 1 have been stored below:
# initialize new instance of the tent class
# tent = Tent.new(color, brand, guests)
# puts "This tent is a #{tent.color.shuffle[0]} #{tent.brand.shuffle[0]}" 
# puts "We have 2 #{tent.color} #{tent.brand} left in stock."
# tent.color = "New! Camouflage color"
# tent.set_up_time(20)
# tent.zip





# AS I DEVELOP...Parking Lot Questions
#Can you have a boolean for an instance variable?
# #does the tent include a fly?
		# # @fly = yes || no
