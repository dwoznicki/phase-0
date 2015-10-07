#Pseudocode
#1 Create list
=begin
Method that creates a new list
List of key value pairs
-keys = item
-values = quantity
Output a list of items and quantities
=end


#2 Add item w/ quantity
=begin
Method that takes in a key and it's value
Adds the new key and value to the end of list
Output the new list
=end

#3 Remove an item
=begin
Method that takes in key to be deleted
Deletes the key and value
Output the new list
=end

#4 Update quantities for items in our list
=begin
A method that takes in a key and value
Replace old key and value with new key and value
Output the new list
=end

#5 Print the list
=begin
Method that takes no arguments
Goes through the list and prints each element
Outputs the list with formatting
=end

#Initial Solution
def create_list
  new_list = Hash.new(0)
end

def print_list(list)
  list.each do |k,v|
    p "#{k}:  #{v}"
  end
end

def remove_item(list, key)
  list.delete(key)
end

def add_item(list, key,val)
  list.store(key,val)
end

def update_item(list, key,val)
  add_item(list,key,val)
end

#Refactored
def case_method
  input = ""
  while input != "exit"
    puts "Choose an option: create list (create), add or update item (update), remove an item (remove), print the list (print), or exit (exit)"
    input = gets.chomp.downcase
    case input
      when "create"
        puts "Please create a name for your list"
        list_name = gets.chomp
        list_name = create_list
      when "update"
        puts "What item?"
        key = gets.chomp
        puts "What value?"
        val = gets.chomp
        update_item(list_name,key, val)
      when "remove"
        puts "What item?"
        key = gets.chomp
        remove_item(list_name, key)
      when "print"
        print_list(list_name)
      when "exit"
        break
      else
        puts "Please enter a valid input (create, update, remove, print)"
    end
  end
end

case_method

#Reflection
=begin
What did you learn about pseudocode from working on this challenge?

  It was interesting to see my pair's method of pseudocoding. I wouldn't say I learned anything exactly, but I did like doing it in a somewhat different way.

What are the tradeoffs of using Arrays and Hashes for this challenge?

  We never really considered using arrays for this challenge.. I suppose we could make two arrays, one for items and one for quantities. That just seems overly complicated when it comes to deleting or updating something. Honestly, hashes seemed like the only reasonable solution to this problem. With a hash, you can easily link the item name and quantity together so that updating and deleting is straightforward.

What does a method return?

  A method can return just about anything. In this case, our methods were returning the value of the function we put inside them. You can also specify what to return with the return command. It doesn't have to be related to the function of the method, if you wanted it that way for some reason.

What kind of things can you pass into methods as arguments?

  Again, you can pass basically any kind of object into a method as an argument, even other methods. We didn't end up doing so here, but I imagine we could have.

How can you pass information between methods?

  You can store the information one method outputs as a variable and use that variable as an argument for other methods. Then those methods can affect the info in that variable, and so on. Basically, the variable acts as your go-between.

What concepts were solidified in this challenge, and what concepts are still confusing?

  I have a much better feeling for how to get information from method to method. I also feel a bit more comfortable working with multiple methods affecting the same information. My partner and I decided to use a case statement to add user input to our methods, so I feel I have a better understanding of case statements now. Our guide mentioned using Object.send for our case statement, but I don't think I quite understand how that works. I'll have to look into it.
=end