# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative links a file contained in the same directory, and it's contents become available to the file with require relative.
# this is different to just require because relative defines that the file is in the same directory.
require_relative 'state_data'

class VirusPredictor
# this method is defining instance variables for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# this method starts the method 'predicted deaths' and 'virus effects' with the information given in initialization
  def virus_effects
    predicted_deaths
    # speed_of_spread
  end

  private
# this method defines number_of_deaths dependant on the population density of a state. Then prints to the screen how many people each state will die per outbreak
  def predicted_deaths    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed} months.\n\n"

  end

# this method defines a variable speed, and changes it based on population density, then prints to the screen how fast the outbreak will spread.
#   def speed_of_spread #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do  |key, value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
the primary key, which is a string, is given a hash as a value, and inside of that hash the keys, which are symbols, are already defined and given values.

What does require_relative do? How is it different from require?
require relative links a file contained in the same directory, and it's contents become available to the file with require relative.
this is different to just require because relative defines that the file is in the same directory, while require makes you write out a lot more syntax.

What are some ways to iterate through a hash?
there are a lot of built in methods that allow you to iterate through a hash, like .each which I used, and other similar methods which can be found on the ruby docs, a couple examples are .each_key, .each, and .each_pair.

When refactoring virus_effects, what stood out to you about the variables, if anything?
instance variables can be read anywhere inside of a class, so giving them as arguments was a waste of time.

What concept did you most solidify in this challenge?
Iterating through hashes was a problem before this, now I know how to do it more soundly.
=end