# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#line 170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#It was an unexpected end of input. It expected another keyword end.
# 5. Where is the error in the code?
#The error is on line 16-17.
# 6. Why did the interpreter give you this error?
#There needs to be another keyword end for the while loop. Otherwise, the program keeps searching for the next keyword end, but doesn't find it by the end of the file. That's why it throws the error line as 170; it got all the way to the last line before seeing that it was missing an end.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#line 36
# 2. What is the type of error message?
#south_park is an undefined local variable or method.
# 3. What additional information does the interpreter provide about this type of error?
#It tells you there's a name error in the code.
# 4. Where is the error in the code?
#The error is on line 36 where we try to call the method or variable south_park.
# 5. Why did the interpreter give you this error?
#We haven't defined south_park anywhere in the code, so ruby doesn't know what it's supposed to be holding or doing. We will also get this error if we define south_park later, but try and call it first.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#line 51
# 2. What is the type of error message?
#cartman is an undefined method
# 3. What additional information does the interpreter provide about this type of error?
#It tells us there's no existing method cartman.
# 4. Where is the error in the code?
#The error is on line 51 where we try to call the method cartman.
# 5. Why did the interpreter give you this error?
#We tried to call a method named cartman, but we hadn't previously defined it in the code. The interpreter sees the method name, but doesn't see what to run, so it throws us this error. Unlike the last error, the interpreter assumes cartman is a method since the parenthesis suggest it has a parameter or argument.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase

# 1. What is the line number where the error occurs?
#line 66
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#It tells us there is 1 argument for 0 expected.
# 4. Where is the error in the code?
#The error is mostly likely on line 70 where we call the method.
# 5. Why did the interpreter give you this error?
#When cartmans_phrase is called, the coder also includes an argument, 'I hate Kyle'. However, the method cartmans_prahse isn't looking for any arguments. All it does is print his catchphrase. You could fix this error by: 1) removing the argument from line 70, or 2) allowing the method to accept an argument on line 66 (even though the method won't do anything with that argument.)

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says "All black people know how to play bass."

# 1. What is the line number where the error occurs?
#line 85
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#It tells us there are 0 arguments given for 1 expected.
# 4. Where is the error in the code?
#The error is actually on line 89, where we call the method.
# 5. Why did the interpreter give you this error?
#When we defined the method cartman_says on line 85, we asked for one arguments, offensive_message, to print to the console. However, when we called it on line 89, we failed to give it an offensive_message to print. To fix this, we simply need to add an argument on line 89.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kyle")

# 1. What is the line number where the error occurs?
#line 106
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#It says there was only 1 argument of the 2 it expected.
# 4. Where is the error in the code?
#The error is on line 110 where we call the method.
# 5. Why did the interpreter give you this error?
#This time, the interpreter was expecting two arguments, a lie and a name, but we only gave it one on line 110 when we called it. To fix this, we need to add a name after the lie, separated by a comma.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#line 125
# 2. What is the type of error message?
#String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#It tells us there's a type error, as in something is the wrong type of object.
# 4. Where is the error in the code?
#The error is on line 125 where we attempt to multiply 5 by "Respect my authoritay!"
# 5. Why did the interpreter give you this error?
#The interpreter is telling us that you can't multiply a number by a string. If you wanted it to print "Respect my authoritay!" 5 times, you'd have to write puts "Respect my authoritay!" * 5.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
#line 140
# 2. What is the type of error message?
#divided by 0
# 3. What additional information does the interpreter provide about this type of error?
#It tells us it's a zero division error.
# 4. Where is the error in the code?
#It's on line 140 where we attempt to define the amount_of_kfc_left.
# 5. Why did the interpreter give you this error?
#Just like in real life, you cannot divide by 0. Zero goes into any given number an infinite number of times. It looks like ruby is helpfully preventing an infinite loop here by simply throwing an error when you try to divide by 0. Assumably, what we meant to write is amount_of_kfc_left = 0/20.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#line 156
# 2. What is the type of error message?
#cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#It tells you where it's attempting to load the file from and that we have a load error.
# 4. Where is the error in the code?
#The error is indeed on line 156, where we're trying to connect this file to "cartmans_essay.md".
# 5. Why did the interpreter give you this error?
#We got this error since we're trying to connect this file to a relative which doesn't exist, or at least is in the wrong directory. If cartmans_essay.md did exist, we could fix this error by moving it into the same directory as this file, or changing the file path to where it is on line 156.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
Which error was the most difficult to read?

  There were no confusing errors here, but I suppose the most difficult to read would be the 'String can't be coerced into Fixnum' error. A lot of errors are pretty self-explanatory, but this one uses some odd language such as 'coerced' and 'Fixnum'.

How did you figure out what the issue with the error was?

  I mean, I could already see what the error was going to be before I tried to run the code. But if I had just seen the error message without looking at the code, I think I would have had a pretty tough time guessing what had actually gone wrong.

Were you able to determine why each error message happened based on the code?

  Yes. I found the errors pretty quickly when I checked the code. It's much easier to find the errors when the portion of code is so small and disconnected from everything else. It gets tricky when you have more moving parts.

When you encounter errors in your future code, what process will you follow to help you debug?

  This challenge gave me a good idea of what different error messages mean. So in the future, I'll be able to see what line the interpreter found the error on, check that line in my code, see what kind of error and additional info is available on the, and pinpoint the cause of the error in the code. Hopefully knowing what kind of error it is will help me determine whether the problem is on the line the interpreter gives me, or elsewhere.

=end