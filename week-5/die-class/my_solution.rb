# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number of sides, a random number between 1 and number of sides
# Steps:
#Define Die class, argument sides
#-throw error if sides is less than 1
#-save number of sides for each instance
#Define method sides
#-returns the number of sides defined
#Define method roll
#-returns a random integer between 1 and number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new "Please choose a number greater than 1"
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand 1..@sides
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new "Please choose a number greater than 1"
    else
      @sides = sides
    end
  end

  attr_reader :sides

  def roll
    rand 1..@sides
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

  An argument error is to tell the user that there's something wrong with the argument(s) they input. A general argument error is when you give more or fewer arguments than the method expected. I imagine that one applies to all objects in Ruby. We added one here to tell the user they need to input a number greater than or equal to 1 as the argument or the class won't work properly.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  I used the method raise for the first time. I had no trouble with it. I also tried out attr_reader, though I don't totally understand the inner workings of that one. It seems to work just fine as a substitute for

  def sides
    return @sides
  end

What is a Ruby class?

  A Ruby class is a blueprint for objects of a certain type. Ruby is called an object oriented language because everything is an object of some kind. For example, the number 31 is an instance of the class Fixnum, which is itself a subclass of the class Integer, which happens to be part of the superclass Numeric, which also includes the class Float, and so on. You can make your own classes using the command
    class Classname
  From there, you can add attributes to the class: things the class knows (instance variables) and things the class does (methods).

Why would you use a Ruby class?

  Well, to start, you can't program in Ruby without using a class of some kind. Everything in ruby (integers, variables, arrays, etc.) is a child of the progenitor superclass Object. You can have different instances of a class (such as instances of an integer, 1 and 31), but those objects only know how to behave because it was passed down from their parent classes. So classes are essential to ruby in that way.

  One might make their own class if they wanted a framework for defining a certain type of object that was going to have several instances with different characteristics. For example, you might want to have a User class for a website. Each User is going to have different characteristics (name, password, email, settings, etc.), but they'll all have the same basic framework. Definding a class User would save you a lot of trouble defining the attributes and functions again and again for each user.

What is the difference between a local variable and an instance variable?

  A local variable saves a piece of information for a specific method or block. An instane variable saves the information for all instances of the class it is defined in. An instance variable is defined with an @ symbol before the variable name (@variable).

Where can an instance variable be used?

  Instance variables can be used when defining classes. The instance variable defines what the class knows; that is, what variable information instances of that class can use to perform their functions. For example, you can use instance variables to set the arguments using the method
    def initialize argument
      @argument = argument
    end
=end