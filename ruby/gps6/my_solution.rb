# Virus Predictor

# I worked on this challenge [with: Matt Higgins ].
# We spent [1:15] hours on this challenge.

# EXPLANATION OF require_relative
# require: when a file is needed from an external location (gem) 
# require_relative: A local file (or a file within the program) that needs
# to be linked to the project using a relative path.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #When called, this method runs the two other methods in the program that will 
  #perform calculations and print out the data.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #This method performs a calculation that predicts how many deaths will occur in an outbreak.
  #It is also printed to the screen.
  def predicted_deaths
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

  #This method performs a calculation that figures out how quickly the outbreak will spread.
  #It is also printed to the screen.
  def speed_of_spread #in months
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

STATE_DATA.each do |state, population_information|
  VirusPredictor.new(state, population_information[:population_density], population_information[:population]).virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection

# What are the differences between the two different hash syntaxes shown in the state_data file?
  #The STATE_DATA/state hash uses a CONSTANT/String syntax. 
  #The state/population information hash uses String/Symbol Symbol syntax.
# What does require_relative do? How is it different from require?
  #require_relative allows me to incorporate a file (or a file within the program) that contains code my file needs.
  #This will be linked using a relative path. 
  #Require allows me to link external gems or libraries that need to be installed first.
# What are some ways to iterate through a hash?
  #I can iterate through a hash by setting up a block that calls .each, .map, or. map! (destructive). Else, I could use a while loop.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #Instance variables do not need to be passed through arguments once they have been set on initialization. 
  #Therefore, the instance variables(@state, @population, @population_density) are not needed since 
  #the methods (predicted_deaths and speed_of_spread) can already use those variables.
# What concept did you most solidify in this challenge?
  #Iterating through a hash within a hash and accessing the data out of that is rather complicated.
  #Walking through it and looking at how the pieces in this scenario was very helpful. 


