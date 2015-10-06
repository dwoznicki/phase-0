# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) the integer as a string separated by a comma every 3 characters, starting from the end
# What are the steps needed to solve the problem?
#If integer has 4 or more characters, apply block to it
#-add each character into an array
#-check array length
#-while it's 4 or greater, do next step
#Starting from end, count 3 spaces in and add a comma
#-from the end, add 3 characters into new array
#-add comma to array
#Repeat check for 4 or more characters
#Else, return output
#-add characters from new array back into first array
#-return number as string

# 1. Initial Solution
def separate_comma integer
  number = []
  separated = []
  n = 0

  integer = integer.to_s
  for x in 0..integer.length-1    #Loop puts each character in integer
    number[n] = integer[x]        #into new array, number.
    n += 1
  end
  n = 0
  while number.length >= 4        #Checks to see that length is 4 or greater,
    for x in 1..3                 #adds last 3 numbers into separated
      separated[n] = number[-1]   #array, adds a comma, then loops.
      number.pop
      n += 1
    end
    separated[n] = ","
    n += 1
  end
  separated.reverse!              #Adds characters from separated array back
  n = number.length               #into original array of numbers in correct
  separated.each do |x|           #order.
    number[n] = x
    n += 1
  end
  n = 0
  number.each do |x|              #Puts strings back into original integer
    integer[n] = x                #variable, returns final string
    n += 1
  end
  return integer
end

# 2. Refactored Solution
def separate_comma integer
  separated = ""
  integer = integer.to_s

  while integer.length >= 4
    last_three = integer[-3, 3]       #Sets last_three as last 3 characters in
    separated << "," + last_three     #integer. Then pushes , + last_three
    integer.slice! last_three         #into new string, separated. Finally,
  end                                 #deletes last_three from original string
  integer << separated
  return integer
end


#3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

  My process was to start with the big steps of what I wanted to do: check if it's long enough, add the comma, then repeat. From there, I thought about what ruby code I was going to use to tackle the larger steps. I thought about taking 3 characters off the end of the number an making them into a single array element, but I couldn't figure out how to do that without using .push or <<. I also considered leaving it as a string and chopping off the last characters and putting them in a new string. In the end, I decided that putting the characters into an array since it was easier to mainipulate the array as I wanted.

Was your pseudocode effective in helping you build a successful initial solution?

  It was actually very helpful. I was having trouble pseudocoding before because it just seemed like an unnecessary step. Even though I knew it wasn't, I couldn't shake the feeling that it wasn't really helping last week. But I think I've found a style that I like; start big and work out the individual steps from there.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

  I used two methods when refactoring: slice! and push (<<). Slice! is a destructive method which removes all instances of some substring from the string; in this case I wanted to remove the last three characters. Push, or <<, is really common and pushes something into a string/array/etc. I my initial solution has a lot of hard coded <<s as well. Everything worked as planned for the refactored solution. My refactored solution is much simpler since I didn't have to play around with arrays and could simply do everything in 2 strings.

How did you initially iterate through the data structure?

  I initially changed it into a string which I then put into an array. This was necessary since you can't iterate over integers (at least, not as far as I know). From there, I used a series of for loops, while loops, and .each to iterate through the values.

Do you feel your refactored solution is more readable than your initial solution? Why?

  Yes, I do. For my initial solution, I was struggling to make it as basic as possible. Therefore, I didn't use <<s or .times which would have made the code easier to understand. As a result, it ends up being this huge process of moving parts. If I had been more forward thinking, I would have defined some methods to carry out the individual functions first and used them in the solution as needed. I'll try and do so in the future. I think the fact that my refactored solution is so much shorter makes it a lot easier to read.

=end