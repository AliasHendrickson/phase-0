# Virus Predictor

# I worked on this challenge [by myself].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#Allows access to a file that is relative to the file that "require_relative" is called in.
#
require_relative 'state_data'

class VirusPredictor
#Determines what variables are declared when a new instance of the class is initialized.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls the predicted deaths and speed of spread functions
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#Predicts the number of deaths that a virus will cause in a certain state
#Adjusts the amount of deaths by populations density
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
#Predicts the speed of the virus spread according to population density
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

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

=begin
STATE_DATA.each do |state, index|
  every_state = VirusPredictor.new(state, index[:population_density], index[:population])
  every_state.virus_effects
end
=end
#=======================================================================
# Reflection Section
=begin
# Release3:
  The STATE_DATA hash has 50 states as keys for their own hash that includes population and population density.
  I think this is a 'hashy hash' because it is a hash where every value is a hash. STATE_DATA is a collection, or a data structure.

#Release5:
  Creating a report for all 50 states should be outside of the class because when the class is initialized it needs to be passed a certain state in order to generate a report.

#Release7:
  Every method below "private" is only accessible inside the class. They cannot be called with driver code.
  This method is a way to control what information can be accessed from the class and how.

#Release9:
  **What are the differences between the two different hash syntaxes shown in the state_data file?**
    The second used syntax creates the keys as symbols, and the first uses strings.
  **What does require_relative do? How is it different from require?**
    require_relative allows access to a file that is relative to the file that "require_relative" is called in. Require_relative is helpful for running tests when code is still in development, but "require" doesn't have a good way of loading files to run tests.
  **What are some ways to iterate through a hash?**
    Each is the method I find myself using the most.
  **When refactoring virus_effects, what stood out to you about the variables, if anything?**
    The arguments for the predicted deaths and speed of spread methods were unneccessary because the information was already being accessed with instance variables in the methods.
  **What concept did you most solidify in this challenge?**
    I learned where and when to call new instances of classes.
=end