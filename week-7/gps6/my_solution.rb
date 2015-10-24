# Virus Predictor

# I worked on this challenge [with: Caroline Artz ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative 'concatenates' the data from another file into
# this one. It is useful to keep one file from getting overcrowded
# data. You can use a path to specify the required file.
require_relative 'state_data'


class VirusPredictor
  # Defines the instance variables we'll use throughout the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs two internal methods: predicted_deaths and speed_of_spread
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
  # Predicts number of deaths based on population and population
  # density in states
  def predicted_deaths

    case @population_density
    when 0..49 then (@population * 0.05).floor
    when 50..99 then (@population * 0.1).floor
    when 100..149 then (@population * 0.2).floor
    when 150..199 then (@population * 0.3).floor
    else (@population * 0.4).floor
    end

  end
  # Predicts speed of spread based on population density in state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
    when 0..49 then 2.5
    when 50..99 then 2
    when 100..149 then 1.5
    when 150..199 then 1
    else 0.5
    end

  end


end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_data|
  VirusPredictor.new(state, pop_data[:population_density], pop_data[:population]).virus_effects
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
=begin
# Reflection Section
What are the differences between the two different hash syntaxes shown in the state_data file?

  The first syntax (using =>) I've heard referred to as "rocket" syntax. It's
  nice because it clearly defines the key and matching value in an easy-to-
  read way. More importantly, it lets you define any kind of object you want
  as the key. In this case, the keys are strings, which makes sense for
  proper nouns, such as state names. The second syntax is a fairly common
  way to write hashes using symbols as the keys. Symbols are common keys, and
  the option to write them with the colon after the symbol name makes
  them very readable keys for lists.

What does require_relative do? How is it different from require?

  Require_relative takes the data from another file and 'concatenates' it
  into the file where you call it. Require, on the other hand, is used to
  add modules (lists of methods, essentially) into a file.

What are some ways to iterate through a hash?

  I ended up just using #each, the most basic iterator, here. I didn't have
  to nest iterators since :population_density and :population were the same
  in each item. Other methods you could use to iterate through a hash are
  #map if you wanted to return and array, #select if you wanted to search
  for something, and #each_key or #each_value if you only wanted to iterate
  over the key or value, respectively.

When refactoring virus_effects, what stood out to you about the variables, if anything?

  There were a lot of unnecessary variables, I found. There were a number of
  places where extra variables were defined, even when they weren't needed
  or even being used.

What concept did you most solidify in this challenge?

  This challenge helped solidify case statements, for sure. I had never
  written such terse case statements, or even knew they were possible. I
  also feel a bit more comfortable with sharing information inside a class.

=end