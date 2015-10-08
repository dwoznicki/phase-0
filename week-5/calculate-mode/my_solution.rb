# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of stuff
# What is the output? (i.e. What should the code return?) an array, containing most frequent appearing values
# What are the steps needed to solve the problem?

=begin
define a method to do the thing that takes an array
  create a new hash with array values as keys
  feed the array into hash, add one to value for each instance
  check which values from key/value pair are highest
  place those keys into new array
  return the new array
=end


# 1. Initial Solution
def mode array
  hash = Hash.new(0)
#adds x as key to hash and value +1 each time x occurs in array
  array.each do |x|
    hash[x] += 1
  end
  new_array=Array.new
#compares each value with the max, pushes keys associated with max into new array
  hash.each do |k, v|
    if v == hash.values.max
      new_array << k
    end
  end
  return new_array
end


# 3. Refactored Solution
#Destructive
def mode array
  hash = Hash.new(0)
  array.each do |x|
#sets value equal to number of occurences of x in array
    hash[x] = array.count x
  end
  hash.each do |key, value|
#deletes the key from array if its value isn't max
    if value != hash.values.max
      array.delete key
    end
  end
#uniq cleans up leftover duplicates
  return array.uniq
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

  We decided to use a hash to easily connect the element with its frequency in the array. I believe we could have also made an array of nested arrays with the element at index 0 and the frequency at index 1(eg. array = [["a", 2], ["b", 1]]). This is pretty over-complicated, though, when a hash does the same thing but is easier to iterate over.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

  Well, not necessarily. I think both this time and last time my partners and I managed to make pretty manageable pseudocode.

What issues/successes did you run into when translating your pseudocode to code?

  We had a bit of trouble figuring out how to compare the values of the hash to see which one(s) was the greatest. But after finding the max method, we quickly got it. I was actually a bit surprised to find that our block for building the hash worked out perfectly the first time we tried it.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  I spent a bit of time on my own trying to solve this problem without using a hash. I experimented with the methods .max, .max_by, .sort_by, etc. But I didn't really have any luck making a more efficient solution. The best method I found was probably array.count x, which returns the number of times x occurs in array. I didn't have much trouble implementing it.

=end