# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# Create car class with multiple methods
# Define initialize
#   Pass in 2 arguments, model and color as instance variables
#   Output: model and color
# Define method drive
#   Takes argument target_distance, a float
#   Output: target_distance
# Define method change_speed
#   Takes argument speed_limit, an integer
#   IF speed_limit == 0
#     Output: stop
#   End
#   Output: speed_limit
# Define method turn
#   Takes argument left or right
#   Output: turned left/right
# Define method total_distance
#   Output: sum of target_distances



# 3. Initial Solution

# class Car
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @total_distance = 0
#     @compartment = []
#   end

#   def drive (target_distance)
#     @target_distance = target_distance
#     puts "Drive #{target_distance} miles (speed limit is #{@speed_limit} mph)"
#     @total_distance += target_distance
#   end

#   def speed_limit(number)
#     @speed_limit = number
#   end

#   def change_speed(speed_limit)
#     puts "You are driving at #{speed_limit} mph"
#   end

#   def check_speed
#     puts "You are driving at #{@speed_limit} mph"
#   end

#   def turn (direction)
#     @direction = direction
#     if @direction == "left" || @direction == "right"
#       puts "At the stop sign, turn #{@direction}"
#     end
#   end

#   def pizza (type)
#     @compartment.push(type)
#   end

#   def destination
#     puts "Arrived! You have travelled #{@total_distance} miles. Deliever #{@compartment[0]}"
#     @compartment.shift
#   end

# end

# class Pizza

#   def initialize(type, size)
#     @type = type
#     @size = size
#   end

#   def add_ingredient(ingredient)
#     @ingredient = ingredient
#   end

#   def special(request)
#     @request = request
#   end

#   def print
#     puts "You ordered a #{@size} inch #{@type} pizza with #{@ingredient}. #{@request}"
#   end

# end


# 4. Refactored Solution

class Car

  attr_reader :speed_limit

  def initialize(model, color)
    @total_distance = 0
    @compartment = []
    puts "Get in your #{color} #{model}"
  end

  def drive (target_distance, speed_limit)
    @speed_limit = speed_limit
    @target_distance = target_distance
    puts "Drive #{target_distance} miles (speed limit is #{@speed_limit} mph)"
    @total_distance += target_distance
  end

  def change_speed(new_speed)
    if new_speed == 0
      puts "You stop the car"
    else
      @speed_limit = new_speed
      puts "You are driving at #{new_speed} mph"
    end
  end

  def turn (direction)
    @direction = direction
    if @direction == "left" || @direction == "right"
      puts "At the stop sign, turn #{@direction}"
    end
  end

  def pizza (type)
    @compartment.push(type)
  end

  def destination
    puts "Arrived! You have travelled #{@total_distance} miles. Deliever #{@compartment[0]} pizza"
    @compartment.shift
  end

end


class Pizza

  def initialize(type, size)
    @type = type
    @size = size
  end

  def add_ingredient(ingredient)
    @ingredient = ingredient
  end

  def special(request)
    @request = request
  end

  def print
    puts "You ordered a #{@size} inch #{@type} pizza with #{@ingredient}. #{@request}"
  end

end





# 1. DRIVER TESTS GO BELOW THIS LINE
new_car = Car.new("Infiniti", "black")
new_car.pizza("pepperoni")
new_car.pizza("cheese")
new_car.pizza("meat lover")
new_car.drive(0.25, 25)
new_car.turn("right")
puts "You are driving at #{new_car.speed_limit} mph"
new_car.change_speed(15)
new_car.drive(0.25, 15)
new_car.turn("left")
new_car.drive(1.4, 35)
new_car.change_speed(0)
new_car.destination

new_pizza = Pizza.new("meat lover", 8)
new_pizza.add_ingredient("mushrooms")
new_pizza.special("Extra meat")
new_pizza.print

=begin
# 5. Reflection
What concepts did you review in this challenge?

  We had to review Ruby syntax a bit, as it's fairly similar but not quite
  the same as JS. This led to occasions where we had to stop and think for a
  moment about wording. We also had to review the attribute method.

What is still confusing to you about Ruby?

  Not much for this challenge. Regular expressions are still a bit daunting,
  but they're not Ruby specific either.

What are you going to study to get more prepared for Phase 1?

  I'm going to do a few more challenges to try and get used to having 2
  different languages in use at a time (2 general programming languages,
  that is).

=end