# Virus Predictor

# I worked on this challenge [by myself, with: my GPS guide ].
# We spent [#1.0] hours on this challenge.

# EXPLANATION OF require_relative
# Requre relative will hook up a file to this file. Requre will hook up a file that is from a prewritten library (gem). 
#
require_relative 'state_data'

class VirusPredictor

#Initializing three instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calling two methods and passing instance variables
  def virus_effects
    predicted_deaths
    #Refactor by getting rid of the below parameters
    # (@population_density, @population, @state)
    speed_of_spread
    #Refactor by getting rid of the below parameters
    # (@population_density, @state)
  end

  private

#This method uses conditions to figure out how many deaths in a specific state will occur

  def predicted_deaths
    #Refactor by getting rid of the below parameters
    # (population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#This method uses similar calculations to method above to calculate speed of spread 

  def speed_of_spread
    #Refactor by getting rid of the below parameters
  # (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#Create a method that will use the hash data to return each state's info.

def data_return
  STATE_DATA.each do | state, state_data_hash | 
    VirusPredictor.new(state, state_data_hash[:population_density], state_data_hash[:population]).virus_effects
  end 
end

data_return

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  #The key/value pair for state/state_data uses a string/hash. Then, inside the second hash, where the key/value
  #is population_density and population are both symbols. 
# What does require_relative do? How is it different from require?
  #Requre relative will hook up a file to this file. Requre will hook up a file that is from a prewritten library (gem).
# What are some ways to iterate through a hash?
  # A block using .each and do/end will iterate through a hash. I think a while loop could work, too.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #Since we are using instance variables and they are accessilbe within the whole class, they were not needed as arguments.
# What concept did you most solidify in this challenge?
  #Naming variables descriptively and understanding how the pipe parameters work when trying to access data in a hash within a hash.