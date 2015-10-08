# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#an array, minimum size for output, optional filler
# What is the output? (i.e. What should the code return?)
#a new array of the minimum size
# What are the steps needed to solve the problem?
#Compare array length to minimum size
#IF min size is greater, pad
#ELSE don't pad
#Output padded array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
#sets the range of .each to only the extra indexes we want to pad
  (array.length..min_size - 1).each { |i| array[i] = value}
  array
end

def pad(array, min_size, value = nil) #non-destructive
#concatenates new_array with original
  new_array = [] + array
  (array.length..min_size - 1).each { |i| new_array[i] = value}
  new_array
end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  (array.length..min_size - 1).each do |i|
    array[i] = value
  end

  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = [] + array

  (array.length..min_size - 1).each do |i|
    new_array[i] = value
  end

  new_array
end



# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?

  I'd say we were. We probably could have gone smalleter and been more specific, but it didn't turn out to be a big problem.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  We were able to pretty easily translate our pseudocode into actual code. We did this by specifying the range of index numbers we wanted to iterate over and setting them equal to the value. For the non-destructive method, we had to mess around a little bit to get the elements out of the original array without changing it, but we figured out a solution.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  Our initial solution passed the test with surprisingly little effort. We had it working with only a few fixes to the non-destructive method after we found that it was, in fact, changing the original array. Our solution was to concatenate the new array with the original instead of setting it equal to the original.

When you refactored, did you find any existing methods in Ruby to clean up your code?

  We didn't really find any Ruby methods to clean up our code. I think we might have found more with a different solution, but we couldn't find much to streamline what we already had.

How readable is your solution? Did you and your pair choose descriptive variable names?

  I think our code is fairly readable; perhaps a bit more so in the refactored solution where we tried to space it out more. The only variable we really set ourselves was new_array for the non-destructive method. I suppose that name is descriptive enough for the purpose of the method.

What is the difference between destructive and non-destructive methods in your own words?

  A destructive method will change the original object it's working on, where a non-destructive method will make a new object to return the changes.
=end