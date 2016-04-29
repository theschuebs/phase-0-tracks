#<----------ASSIGNMENT COMPLETED AS NIGHT HAWK------------->

#This is for my own learning
dinos = ["T-rex", "brontosaurus", "pterodactyl"]
number_of_dinos = dinos.length
number_of_dinos.times { |x| puts "#{dinos[x]}: #{x}" }
number_of_dinos.times { puts "I love dinos!" }

#RELEASE 0
tableware = ["cup", "plate", "spoon", "fork", "knife"]

p tableware

def set_table(settings)
    puts "Before the table is set..."
    settings.each{|utensil| puts "#{utensil}" + "!"}
    settings.each{|utensil| puts "Please put #{utensil} on the table."}
    puts "After the table is set"
end

set_table(tableware)

#RELEASE 1
musicians = ["Bowie", "Prince", "Frey", "Petty", "Ozzy" ]

musician_status = {bowie: "deceased", prince: "deceased", frey: "deceased", petty: "living", ozzy: "living"}

musicians.each {|musician| puts "#{musician} ROCKS!" }

musicians.map! {|musician| musician.upcase }
p musicians

musician_status.each {|musician, status| puts "#{musician.capitalize} is #{status}" }

#RELEASE 2
array1 = [1, 2, 3, 4, 5]

array1.delete_if {|x| x <=4}
p array1

hash1 = {one: 1, two: 2, three: 3, four: 4, five: 5}
hash1.delete_if {|k, v| v > 2 && v < 5}
p hash1

array2 = [1, 2, 3, 4, 5]

array2.keep_if {|x| x > 2}
p array2

hash2 = {one: 1, two: 2, three: 3, four: 4, five: 5}
hash2.keep_if {|k, v| v > 2 && v < 5}
p hash2

array3 = [1, 2, 3, 4, 5]

p array3.drop_while {|x| x != 3}

hash3 = {one: 1, two: 2, three: 3, four: 4, five: 5}
p hash3.drop_while {|k, v| v < 3 }


#<----------ASSIGNMENT COMPLETED AS POCKET GOPHER------------->

#RELEASE 0 WRITE A BLOCK THAT THAT TAKES PARAMETERS
def block_runner
  #before
  puts "I'm testing my block!"
  
  #block
  yield("pie", 3.14)
  
  #after
  puts "Block finished!"
  
end

block_runner { |first, second| puts "#{first} #{second}" }

#RELEASE 1 USE .EACH, .MAP and .MAP!
pizza_toppings = ["sausage", "pepperoni", "cheese", "pineapple"]

phone_book = {"Bob" => 1702292, "Sally" => 5555555,  "Joe" => 1234567}

# EACH #

# before array each call
p pizza_toppings

# array each call
pizza_toppings.each do |topping|
  puts "I like this topping: #{topping}"
end

# after array each call
p pizza_toppings

# before hash each call
p phone_book

# hash each call
phone_book.each do |name, number|
  puts "You can reach #{name} at #{number}"
end

# after hash each call
p phone_book


# MAP! #

# before array map! call
p pizza_toppings

# array map! call
pizza_toppings.map! do |topping|
  "extra " + topping
end

# after array map! call
p pizza_toppings

#RELEASE 2 USE DOCUMENTATION
# Number 1
numbers = [1, 2, 3, 4, 5]

numbers.each do |num|
  
  numbers.delete(num) if num.even?
  
end

p numbers


# Number 2

numbers = [1, 2, 3, 4, 5]

new_numbers =[]

numbers.each do |num|
  
  new_numbers << num if num.odd?
  
end

p new_numbers


# Number 3

numbers = [1, 2, 3, 4, 5]

numbers.keep_if do |num|
  
  num > 3
  
end

p numbers


# Number 4

numbers = [1, 2, 3, 4, 5, -670]

new_numbers = numbers.drop_while do |num|
  
  num <= 2
  
end

p new_numbers


