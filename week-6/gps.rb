# Your Names
# 1)Jack Huang
# 2)Daniel Woznicki

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, ingredient_quantity)
  #menu is the items and quantity we need to make for one.
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #will check whether or not the item is in the menu.
  raise ArgumentError, "#{item_to_make} is not a valid input" unless menu.include? item_to_make
  # error_counter will raise ArgumentError if item to make is not in the library.
  #serving_size will give us the amount of item to make
  serving_size = menu[item_to_make]
  #serving_size_mod will give us the leftover amount of ingredient we get (if any)
  remainder = ingredient_quantity % serving_size
  if remainder < 5
    suggested_items = "You should make #{remainder} cookies."
  else
    suggested_items = "You should make #{remainder/5} cake and #{(remainder%5)} cookies."
  end
  output = "Calculations complete: Make #{ingredient_quantity/serving_size} of #{item_to_make}"
  remainder == 0 ? output : "#{output} and you have #{remainder} leftover ingredients. #{suggested_items}"
  # outputs how many items were made and how many leftover ingredients there are.
end

#  p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 12)
#  p serving_size_calc("cake", 5)
#  p serving_size_calc("cake", 7)
#  p serving_size_calc("cookie", 1)
#  p serving_size_calc("cookie", 10)
#  p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
=begin
What did you learn about making code readable by working on this challenge?

  I learned that it's important to choose good, descriptive variable names and reasonably straightforward blocks. Some of the mechanisms in the original code were very odd.

Did you learn any new methods? What did you learn about them?

  I didn't exactly learn anything new, though I did find that values_at returns an array, which could be useful in the future.

What did you learn about accessing data in hashes?

  We learned that if you try to access a key that isn't there, you'll get a nil, which the original code used in an odd way to check if the item_to_make was in the library.

What concepts were solidified when working through this challenge?

  I felt better about working with and accessing hashes after this challenge. It also helped me get a feel for expressing an output properly.

=end