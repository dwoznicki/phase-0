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
  (array.length..min_size - 1).each { |i| array[i] = value}
  array
end

def pad(array, min_size, value = nil) #non-destructive
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