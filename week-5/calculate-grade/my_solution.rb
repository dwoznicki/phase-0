# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. Pseudocode

# What is the input? array of numbers, 0 to 100
# What is the output? (i.e. What should the code return?) letter grade based on array
# What are the steps needed to solve the problem?
#Check that numbers in array are between 0 and 100
#-IF all numbers > 0 and < 100, continue
#-ELSE throw error
#Calculate average of numbers
#-Add numbers together, divide by number of numbers
#-Save as average
#Return grade based on average
#-Output letter grade based on average


# 1. Initial Solution
def get_grade scores
  average = 0
  scores.each do |num|
    if num < 0 || num > 100
      p "Please input a list of valid scores (0-100)."
    else
      average += num
    end
  end
  average /= scores.length
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

# 3. Refactored Solution
def get_grade scores
  average = (scores.reduce :+) / scores.length
  if average >= 90 then "A" elsif average >= 80 then "B" elsif average >= 70 then "C" elsif average >= 60 then "D" else "F" end
end

# 4. Reflection