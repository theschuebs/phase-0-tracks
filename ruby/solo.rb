# Design a class
# Users can create a FLAG
# Users can decide how many stars they want on the flag (star attribute, intiger)
# Users can decide how many stripes they want on the flag (stripe attribute, intiger)
# Users can decide what color they'd like to use on the flag (color attribute, string)

class Flag
	attr_accessor :num_of_stars, :num_of_stripes, :color

	def initialize(num_of_stars, num_of_stripes, color)
		@num_of_stars = num_of_stars.to_i
		@num_of_stripes = num_of_stripes.to_i
		@color = color
	end

	def stars
		puts "This flag will have #{@num_of_stars} stars"
		puts "*********"
	end

	def stripes
		puts "---------"
		puts "---------"
		puts "This flag will have #{@num_of_stripes} stripes"
	end

	def color
		puts "This flag is #{@color}"
	end

end

my_flag = Flag.new(10, 10, 'red')
my_flag.stars
my_flag.stripes
my_flag.color

#UI
# Store these class instances in an array.
created_flags = []

loop do
# Prompt the user for each attribute
puts "How many stars do you want on the flag? (type 'done' to exit)"
num_of_stars = gets.chomp
break if num_of_stars == 'done'

puts "How many stripes do you want on the flag? (type 'done' to exit)"
num_of_stripes = gets.chomp
break if num_of_stripes == 'done'

puts "What color would you like your flag to be? (type 'done' to exit)"
color = gets.chomp
break if color == 'done'

p created_flags << Flag.new(num_of_stars, num_of_stripes, color)
end

created_flags.each do |flag|
	puts "This flag has #{flag.num_of_stripes} stripes and #{flag.num_of_stars} stars."
	puts "#{flag.color}"
	end
