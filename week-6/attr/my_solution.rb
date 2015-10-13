#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_accessor :name
  def initialize
    @name = "Dan"
  end
end

class Greetings
  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! It sure is a swell day to be alive!"
  end
end

greet = Greetings.new
greet.hello

# Reflection
=begin
===Release 1===
What are these methods doing?

  These methods are either saving the value assigned to them (name, age, occupation), or changing the information stored in the instance variables to new values.

How are they modifying or returning the value of instance variables?

  The default values are set under the initialize method which runs when a new instance of the class is made. From there, different methods return the different values stored in the instance variables @age, @name, and @occupation.  There are also some change methods which allow the user to input their own values for the instance variables and thus customize their Profile.

===Release 2===
What changed between the last release and this release?

  Instead of writing a method to define @age, we simply used the reader attribute attr_reader :age to define our age instance variable.

What was replaced?

  We replaced the what_is_age variable with attr_reader :age to define the @age instance variable. Because of this, we can access age simply using #.age on line 58.

Is this code simpler than the last?

  Yes. This refactored version of the code is much simpler to work with and read. Defining a new method just to return the @age instance variable did seem a bit clunky.

===Release 3===
What changed between the last release and this release?

  Now, instead of writing a method to change the set age, we use the attribute writer attr_writer :age to make it simple for users to change their age.

What was replaced?

  All instances of the method change_my_age= were replaced with #.age. This goes for both the method inside the class and the method call on line 68.

Is this code simpler than the last?

  Again, this is much simpler. Now we can use #.age to return the currecnt age or set it to a new age. This simplifies the code greatly as it makes logical sense to both check and change the @age variable using #.age.

===Release 6===
What is a reader method?

  A reader method is a method that can be read or returned, but not changed by the user.

What is a writer method?

  A writer method is a method that can be changed, but not not read or returned by the user.

What do the attr methods do for you?

  The attr methods allow you to set reader, writer, or accessor instance variables in one simple line. This is very useful because otherwise you'd have to define multiple methods to carry out the same functions.

Should you always use an accessor to cover your bases? Why or Why not?

  You shouldn't always use an accessor. Rather, you should taylor the attr type you're using to the function you want the variable to have. For example, there may be times when you want to give the user the option of viewing an instance variable you have defined in your class, but not changing it. Perhaps changing it would cause problems in other methods. Generally, it's a good idea to only add what functionality is necessary, else everything gets muddled and unnecessarily complicated.

What is confusing to you about these methods?

  The only thing I'm not sure about is why/how the attr method changes a symbol to an instance variable. My guess is so that you can't have multiple instance variables of the same name, but I'm not sure.

=end