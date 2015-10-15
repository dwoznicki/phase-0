
#
# Your previous Plain Text content is preserved below:
#
# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"
#
array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
#
# # attempts: 1
# # ============================================================
p array[1][1][2][0]
#
#
# # ============================================================
#
# # Hole 2
# # Target element: "congrats!"
#
hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
#
# # attempts: 1
# # ============================================================
p hash[:outer][:inner]["almost"][3]
#
#
# # ============================================================
#
#
# # Hole 3
# # Target element: "finished"
#
nested_data = {array: ["array", {hash: "finished"}]}
#
# # attempts: 1
# # ============================================================
p nested_data[:array][1][:hash]
#
#
# # ============================================================
#
# # RELEASE 3: ITERATE OVER NESTED STRUCTURES
#
number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |elt|
#   if elt.is_a? Array
#     elt.map! { |num| num += 5 }
#   else
#     elt += 5
#   end
# end

#Refactored
def add_five(array)
  array.map! do |elt|
    elt.is_a?(Integer) ? elt += 5 : add_five(elt)
  end
end

add_five number_array
p number_array

#
#
#
# # Bonus:
#
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.each do |elt|
#   if elt.is_a? Array
#     elt.each do |subelt|
#       if subelt.is_a? Array
#         subelt.each { |name| puts name + "ly" }
#       else
#         puts subelt + "ly"
#       end
#     end
#   else
#     puts elt + "ly"
#   end
# end

#Refactored
def add_ly(array)
  array.each do |elt|
    if elt.is_a?(String)
      puts elt + "ly"
    else
      add_ly(elt)
    end
  end
end

add_ly(startup_names)


#Reflection
=begin
What are some general rules you can apply to nested arrays?

  Nested arrays are easy enough to work with if you know how to access them. When trying to affect an element, always keep in mind what level of the array that element is on. The number of the level is the number of [] that you will need to access it. Also, remember that each new nested array starts at an index of 0.

What are some ways you can iterate over nested arrays?

  If you want to iterate over a nested array, you could flatten it first and simply iterate over everything that way. But if you wanted to specifically iterate over certain nested arrays and not others, you would want to call an inner iterator inside of your outer iterator.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  To iterate over everything, my partner and I opted to write a recursive iterator. Our iterator checks whether each element is an array or not. If it is, it will call itself to iterate over that array. We could have easily done the same thing by flattening the array first, but it was kinda fun to write a recursive solution.

=end