# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? an array of objects
# What is the output? (i.e. What should the code return?) the median of the array
# What are the steps needed to solve the problem?
#Sort the array from smallest to largest
#Check if the array length is odd or even
#-IF the remainder when divided by 2 is 1, it's odd
#-ELSE it's even
#IF it's odd, return the middle object
#-count to the middle index number, return object
#ELSE return the average for the middle two objects
#-count to the middle two objects
#-add objects together and divide by 2, return a float



# 1. Initial Solution
# def median array
#   array.sort!
#   if array.length % 2 == 1
#     array[array.length / 2]
#   else
#     (array[(array.length / 2) - 2] + array[(array.length / 2)]) / 2.to_f
#   end
# end

# 3. Refactored Solution
def median array
  array.sort!
  length = array.length

  if array.any? { |object| object.is_a?String }
    array[length / 2]
  else
    (array[(length - 1) / 2] + array[length / 2]) / 2.0
  end
end

# 4. Reflection