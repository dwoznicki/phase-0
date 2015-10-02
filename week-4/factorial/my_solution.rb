# Factorial

# I worked on this challenge with: Michael Jasinski.


# Your Solution Below
def factorial(number)
   pro= 1
   until number == 0
    pro = pro * number
    number = number - 1
   end
   pro
end