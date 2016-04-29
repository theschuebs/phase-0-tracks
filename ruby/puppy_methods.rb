#<------------Assignment done as Nighthawk ------------------->
class Television
  
  def initialize
  end
  
  def turn_on(power)
    if power == "on"
      puts "The TV is on"
    elsif power == "off"
      puts "The TV is off"
    else 
      puts "POWER OUTAGE"
    end
  end
  
  def volume(i)
    if i <= 3
      puts "Turn up the volume!"  
    elsif i > 3 && i < 7
      puts "Juuussstt Right!"
    else
      puts "TOO LOUD!"
    end
  end
  
  def buzz
    puts "*buzzzzzzzz*"
  end
  
end

# samsung = Television.new
# samsung.turn_on("off")
# samsung.volume(7)
# samsung.buzz

tvs = []

2.times do
  samsung = Television.new
  tvs << samsung
end

tvs.each {|samsung| puts "#{samsung.turn_on("off")} #{samsung.buzz} #{samsung}"}

# p tvs

class Puppy
  
  def initialize
    puts "Initializing new Puppy Instance."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(i)
    i.times { |i| puts "Woof!"}
  end
  
  def roll_over
    puts "*Roll over!"
  end
  
  def dog_years(j)
    p j * 7
  end
  
  def paw
    puts "Shake hands!"
  end

end

sparky = Puppy.new
sparky.fetch("ball")
sparky.speak(3)
sparky.roll_over
sparky.dog_years(3)
sparky.paw





#<------------Assignment done as Pocket Gopher ------------------->
# #Create class
# class Puppy
# #Define five instance methods for puppy actions
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(number)
#       number.times do
#         puts "Woof!"
#       end
#   end
  
#   def roll_over
#     puts "*rolls over*"
#   end

# # roll_over

#   def dog_years(dog_age)
#     human_age = dog_age * 7
#     puts human_age
#   end

# # dog_years(5)

#   def play_dead(seconds)
#     puts "The dog plays dead for #{seconds} seconds."
#   end

# # play_dead(30)
  
# #Definte initialize method
#   def initialize 
#     puts "initializing new puppy instance..."
#   end

# end

# #Create a new class instance and test instance methods
# puppy = Puppy.new

# puppy.fetch("ball")
# puppy.speak(3)


# #Create class
# class Cell
# #Create new class methods
#   def initialize
#     puts " initializing new cell instance"
#   end

#   def make_call(phone_number)
#     puts "Dial #{phone_number}"
#   end

#   def send_text(message)
#     p "Send #{message}"
#     return "Send #{message}"
    
#   end
  
# end 

# #Create a loop to run 50 instances of our class
# array1 = []
# 50.times do
#   instance = Cell.new
#    array1 << instance
# end

# #Iterate over array elements and call instance methods
# array1.each do |instance|
#   instance.make_call("867-5309")
#   instance.send_text("Bye Felica")
# end

# #Testing instance methods
# cell = Cell.new

# cell.make_call(666)
# cell.send_text("bye")