# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Rebecca Nelson ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A 16-digit integer
# Output: a boolean, true or false
# Steps:

# UNLESS number is 16-digit integer
  # Argument error

# Split the integer into an array
# IF index is even
  # multiply number by 2

# IF length of number > 1
  # Split number
# ADD all numbers in array

# RETURN true IF sum is multiple of 10
# ELSE false

# Initial Solution
# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(number)
    @number = number.to_s.split(//)
    @number.map! { |n| n.to_i }
    unless @number.length == 16
      raise ArgumentError.new("Must be a 16 digit number")
    end # unless
  end #initialize

  def check_card

    @number.each_with_index do |n, i|
      if i % 2 == 0
        n *= 2
      end #If statement
      @number[i] = n
    end #each_with_index
    @number.map! do |n|
      if n >= 10
        n.to_s.split(//)
      else
        n
      end # if n>=10
    end #map!
    @number.flatten!
    @number.map! do |n|
      if n.is_a?(String)
        n.to_i
      else
        n
      end #if n.is_a?
    end #map!

    @sum = @number.reduce(&:+)

    if @sum % 10 == 0
      true
    else
     false
    end #if @sum % 10
  end #check_card

end


# Refactored Solution
class CreditCard
  def initialize(number)
#Splits number into array of individual digits
    @number = number.to_s.split(//)
    @number.map! { |n| n.to_i }
#Throws argument error unlless number is 16 characters long
    raise ArgumentError, "Must be a 16 digit number" unless @number.length == 16
  end #initialize

  def check_card
#Doubles all numbers with an even index number
    @number.each_with_index do |num, index|
      num *= 2 if index.even?
      @number[index] = num
    end #each_with_index
#Splits nums greater than 10 into their digits ("10" => ["1","0"])
    @number.map! do |num|
      num >= 10 ? num.to_s.split(//) : num
    end #map!
#Removes arrays, changes strings to integers
    @number.flatten!
    @number.map! do |elt|
      elt.is_a?(String) ? elt.to_i : elt
    end #map!
#Adds all numbers together
    @sum = @number.reduce(&:+)
#Checks if sum is even divisible by 10
    @sum % 10 == 0 ? true : false
  end #check_card

end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?

  The most difficult part of the challenge was separating the two digit numbers into their individual digits. We tried to include that function in the each_with_index iterator, but found that wasn't going to work. So we ended up doing another iteration to find them, converting them to an array of separate digits, then flattening them back into the original array.

What new methods did you find to help you when you refactored?

  We didn't find any new methods to refactor with. We refactored some of our if statements into ternaries, but we used essentially the same methods as we did in our initial solution.

What concepts or learnings were you able to solidify in this challenge?

  This challenged helped solidify how to use the methods #split and #reduce a bit for me. These methods are immensely useful when working with numbers that need to be modified in very specific ways. It also helped me continue to consider how to make descriptive variable names.

=end