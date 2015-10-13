# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: an integer for answer, an integer for guess
# Output: the symbols :high if guess is > answer, :correct if guess == answer, and :low if guess is < answer
#it should also have a method solved? which returns true if last guess was :correct, and false otherwise
# Steps:


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer.to_i
  end

  def guess number
    @number = number
    if @number > @answer
      @solved = false
      :high
    elsif @number < @answer
      @solved = false
      :low
    else
      @solved = true
      :correct
    end
  end

  def solved?
    if @solved == true
      true
    else
      false
    end
  end
end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
#if answer isn't an integer, raised an argument error
    raise ArgumentError, "not a valid input; input an integer" unless @answer.is_a? Integer
  end

  def guess number
    @number = number
#<=> combined comparison operator returns 1 if a > b, 0 if a == b, and -1 if a < b
    @result = @number <=> @answer
#nested ternary checks if @result is 0, else if @result is 1, else (is -1)
    @result == 0 ? :correct : @result == 1 ? :high : :low
  end

  def solved?
#more ternary; checks if @result is 0 (ie, :correct)
    @result == 0 ? true : false
  end
end



# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  Instance variables are like the characteristics of a real-world object and methods are the behaviors, or actions you can take with that object. It's a little strange to apply it to the GuessingGame challenge, since a real life guessing game doesn't really have any physical form, but it makes a lot of sense for the Die class. The instance variable @sides defines the characteristic of how many sides the Die has, and #roll will perform the action of rolling the Die and returning a random output.

When should you use instance variables? What do they do for you?

  You need to use instance variables pretty much any time you make a class. They save the proper information for any instance of the class you make. If you used local variables, instances of your class would be unable to access the variables and would not run properly.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  Flow control is how you control the output the program gives you based on certain criteria. Flow control consists of if/else statements, logical operators, etc. I had to do a bit of tinkering to get my <=> combined comparison to work, but not much trouble with the ternary statements.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  Symbols are different from other objects in a couple of ways. First, they are immutable, meaning they can't be changes. Second, they are unique, meaning there can only ever be one instance of a given symbol. You don't so much make symbols as you do call them. I suppose this would be useful for this class so that :high, :low, and :correct would always point to the same thing in any instance of GuessingGame.

=end