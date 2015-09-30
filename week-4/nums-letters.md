What does puts do?

  The puts method will print something and put it on a new line on the console. This is useful for showing text to the user without actually returning anything.

What is an integer? What is a float?

  An integer is any whole number, eg. 1, 2, 9999, -13, etc. A float is a number with a decimal point in it, eg. 0.1, 0.02, 0.9999, -1.3, etc.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  In Ruby, there are a number of different objects which have different properties, and the computer will treat them differently depending on what kind of object they are. You could have lists, sentences, variables, etc. One area of these divisions that can be confusing are "numbers." You see, Ruby doesn't actually have a "numbers" category. Instead, it has two categories that make up what we traditionally think of as "numbers": "integers" and "floats." Integers are whole numbers, and floats are numbers containing a decimal point. These are totally separate objects in Ruby, which can lead to some odd situations.

  For example, let's say you give Ruby the equation:
    2/4
  and ask it to solve it. What answer will you get? 0.5, right? Unfortunately, that's not the case. When Ruby sees two integers in the equation, it assumes you want an integer answer as well. You'll recall that 0.5 is a float, not an integer. Ruby can't parse the difference between integers and floats in such an equation, so it will return the highest integer value available, rounded down. In this case, you would get 0, since 4 goes into 2 evenly 0 times.

  But what if you do want to get 0.5? It's totally possible to get that answer. All you need do is define the objects you're inputting as floats. That is:
    2.0/4.0
  Since you've now specified to Ruby that you're inputting floats, Ruby will return a float, as well: 0.5.

Here's my method for calculating hours in a year and minutes in a decade.
```ruby
def time_calculator
  hours_in_a_year =  365 * 24
  puts hours_in_a_year
  minutes_in_a_decade = 10 * 364 * 24 * 60
  puts minutes_in_a_decade
end
```
