# Virus Predictor

# I worked on this challenge [by myself, with: Jim Hallberg].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is for connecting files relative to this one
# require is for connecting beyond that.
require_relative 'state_data'

class VirusPredictor

  # adds data to the new instance on initialization
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # runs to seperate methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicts deaths that will occur in a state using the power of math.
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      death_variable = 0.4
    elsif @population_density >= 150
      death_variable = 0.3
    elsif @population_density >= 100
      death_variable = 0.2
    elsif @population_density >= 50
      death_variable = 0.1
    else
      death_variable = 0.05
    end
    number_of_deaths = (@population * death_variable).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # will predict the speed of the spread based on more math.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |name, data|
  output = VirusPredictor.new(name, data[:population_density], data[:population])
  output.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# one hash contains the other hashes, while the "sub"-hashes contain data of the keys to the main hash.

# What does require_relative do? How is it different from require?
# require_relative connects files relative to the one you are connecting. Require can connect to any file.

# What are some ways to iterate through a hash?
# .each, .times, until/while loops

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# That they weren't needed

# What concept did you most solidify in this challenge?
# how to connect data to method