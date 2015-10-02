# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Michael Jasinski.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of the array's numbers
# Steps to solve the problem.
#method total
#input is an array of numbers
#add 0 number in the array with 1 number
#and so on
#output is the sum of numbers

# 1. total initial solution
def total(array)
  x = 0
  sum = 0

until x == array.length
    sum = sum + array[x]
    x = x + 1
  end
  return sum

end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: a sentence
# Steps to solve the problem.
#define a method sentence maker
#take input of array
#add words in array together to form sentence
#capitalize first word
#add period after last word
#output sentence

# 5. sentence_maker initial solution
def sentence_maker(words)
  x = 0
  sentence = ""

  until x == words.length - 1
    words[0] = words[0].capitalize
    sentence = sentence +  words[x].to_s + " "
    x = x + 1
  end
  until x == words.length
    words[0] = words[0].capitalize
    sentence = sentence +  words[x].to_s + "."
    x = x + 1
  end
  return sentence

end


# 6. sentence_maker refactored solution

def sentence_maker(words)
   string = words.join(' ')
   string.capitalize!
   string << '.'
end
