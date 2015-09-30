#Release 1 Summarize
###What does puts do?

  The puts method will print something and put it on a new line on the console. This is useful for showing text to the user without actually returning anything.

###What is an integer? What is a float?

  An integer is any whole number, eg. 1, 2, 9999, -13, etc. A float is a number with a decimal point in it, eg. 0.1, 0.02, 0.9999, -1.3, etc.

###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  In Ruby, there are a number of different objects which have different properties, and the computer will treat them differently depending on what kind of object they are. You could have lists, sentences, variables, etc. One area of these divisions that can be confusing are "numbers." You see, Ruby doesn't actually have a "numbers" category. Instead, it has two categories that make up what we traditionally think of as "numbers": "integers" and "floats." Integers are whole numbers, and floats are numbers containing a decimal point. These are totally separate objects in Ruby, which can lead to some odd situations.

  For example, let's say you give Ruby the equation:
    2/4
  and ask it to solve it. What answer will you get? 0.5, right? Unfortunately, that's not the case. When Ruby sees two integers in the equation, it assumes you want an integer answer as well. You'll recall that 0.5 is a float, not an integer. Ruby can't parse the difference between integers and floats in such an equation, so it will return the highest integer value available, rounded down. In this case, you would get 0, since 4 goes into 2 evenly 0 times.

  But what if you do want to get 0.5? It's totally possible to get that answer. All you need do is define the objects you're inputting as floats. That is:
    2.0/4.0
  Since you've now specified to Ruby that you're inputting floats, Ruby will return a float, as well: 0.5.

#Release 2 Try in
Here's my method for calculating hours in a year and minutes in a decade.
```
def time_calculator
  hours_in_a_year =  365 * 24
  puts hours_in_a_year
  minutes_in_a_decade = 10 * 364 * 24 * 60
  puts minutes_in_a_decade
end
```

#Release 7 4.2 Reflection
###How does Ruby handle addition, subtraction, multiplication, and division of numbers?

  You can perform all these basic math functions in ruby using the proper math operators.
  Addition: +
  Subtraction: -
  Multiplication: *
  Division: /

###What is the difference between integers and floats?

  Integers are whole numbers, such as 2, 999, or -31. They do not contain decimal points. Floats are numbers with decimal points, such as 0.2, 9.99, or -31.0.

###What is the difference between integer and float division?

  Dividing two integers in Ruby will **always** return an integer. If the two integers can't be divided evenly, it will return the highest possible integer answer and drop the rest. For example:
  ```
  5 / 3
  => 1
  ```
  since 3 will go into 5 once.
  For float division, Ruby will **always** return a float. So in that case:
  ```
  5.0/3.0
  => 1.6666666666666667
  ```

###What are strings? Why and when would you use them?

  Strings are essentially text. They don't have any real value other than displaying some information to the user. Strings are wrapped in either single quotes ('') or double quotes (""). For example, "2" will not be treated as an integer by Ruby, but rather as a string. That means you won't be able to do math with "2" since Ruby just sees it as text.

###What are local variables? Why and when would you use them?

  Local variable are keywords you use to hold a certain value. Then, if you want to access that value later, you can do so by calling that keyword. For example, you can set:
  ```
  age = 18
  ```
  with `age` as the local variable, holding the value of `18`. This also makes it easy to change your `age` in the future, if need be. All you need do is reassign age to the new value, say `19`.

###How was this challenge? Did you get a good review of some of the basics?

  This challenge was pretty simple. It was good to review the basics, though. I especially benefited from explaining the difference between integer and float division.

#Links to sub-challenges

[basic math](https://github.com/dwoznicki/phase-0/blob/master/week-4/basic-math.rb)
[defining variables](https://github.com/dwoznicki/phase-0/blob/master/week-4/defining-variable.rb)
[simple string](https://github.com/dwoznicki/phase-0/blob/master/week-4/simple-string.rb)