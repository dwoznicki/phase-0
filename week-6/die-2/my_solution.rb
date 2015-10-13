# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [.25] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: the number of labels, a random label
# Steps:
#Set labels to work for every instance of a Die
#IF the number of sides is 0, return an argument error
#-make an instance variable, labels
#For sides, return the number of labels
#-check how many labels there are, return that integer
#For roll, return a random label
#-choose a random number from 0 to length of labels array
#-return label associated with that index number


# Initial Solution
class Die
  def initialize(labels)
    if labels.length <= 0
      raise ArgumentError, "Array size must be greater than 0"
    else
      @labels = labels
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand @labels.length]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    if labels.length <= 0 then raise ArgumentError, "Array size must be greater than 0" else @labels = labels end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.shuffle.first
  end
end



# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  The main differences between this die and the last one was the input and what you return. The logic is practically identical to the last problem. I just made a few alterations to make it work with an array.

What does this exercise teach you about making code that is easily changeable or modifiable?

  You should generally go for the simplest, most straightforward solution initially. That's doubly true if you think you're going to be modifying it in the future. This challenge was a cinche because I could have nearly copied and pasted my previous solution.

What new methods did you learn when working on this challenge, if any?

  I used #shuffle for my refactor. I've never used it before, but it appears to work just fine at randomizing the order of an array. I don't really think my refactored solution was better than my initial one, but it was interesting to mess around with some ruby methods.

What concepts about classes were you able to solidify in this challenge?

  Not too much, really.. This challenge is almost a carbon-copy of last week's, so I felt I had a pretty good grasp on instance variables and the like already. I had more of a chance to work with those instance variables this time, though. It's important to use instance variables (not normal variables) when defining methods in a class!

=end