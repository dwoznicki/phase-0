def greeting
  puts "What's your first name?"
  user_first = gets.chomp
  puts "What's your middle name? (leave blank if none)"
  user_middle = gets.chomp
  #This is to fix spacing if the user leaves middle name blank
  user_middle = user_middle + " " unless user_middle == ""
  puts "What's your last name?"
  user_last = gets.chomp

  puts "Hello #{user_first} #{user_middle}#{user_last}! Welcome to your new life."
end

greeting

def better_num
  puts "What's your favorite number?"
  user_num = gets.chomp
  #This checks that user_num is actually a number. If not, it will tell the user and recall itself.
  if user_num.to_i == 0 && user_num != "0"
    puts "Your favorite number must be a number. Please try again."
    better_num
  else
    bigger_num = user_num.to_i + 1
    puts "#{user_num}? Perhaps you'd be happier with #{bigger_num}."
  end
end

better_num

=begin
4.3 Reflection

How do you define a local variable?

  A local variable can be defined with =. For example, if you wanted to set my_variable equal to the number 8, you'd write:
    my_variable = 8

How do you define a method?

  To define a method, you should use the following syntax:
    def my_method
      #block of code
    end
  This will make my_method run the block of code when called later. You can call a method simply by writing its name; in this case:
    my_method

What is the difference between a local variable and a method?

  A local variable can only hold one value at a time, such as a number, string, or boolean. Think of a variable as a container for a noun, or a thing. A method can hold a whole block of code. When you call a method, you're running the block it contains. Think of a method as a container for a verb. The code inside of a method is an action for the computer to take.

How do you run a ruby program from the command line?

  To run a ruby programe in the command line, use the command:
    ruby filename.rb
  If you just want to mess around and see how ruby handles a block of code, you can use the command:
    irb
  This sets up a virtual ruby environment for easy testing. Type exit to go back to the command prompt.

How do you run an RSpec file from the command line?

  To run an RSpec file, you should type:
    rspec filename.rb
  Make sure you're running the spec file, not the the file with the actual method. RSpec has its own syntax, so running the method file with rspec will do nothing.

What was confusing about this material? What made sense?

  There's nothing that confused me about this material. Perhaps the most foreign concept is RSpec. I understand the concept, but the syntax is still new to me. Everything else made sense, though I've already seen it and spent a lot of time thinking about it.

=end