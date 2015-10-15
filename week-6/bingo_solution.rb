# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
 #Choose random number 0-4, match it with a letter, save to letter variable
 #Randomly pick a number between 1-100, save to num variable

# Check the called column for the number called.
  #Match letter number to row number
  #Check each element in row to see if it matches num variable

# If the number is in the column, replace with an 'x'
  #IF a match is found, change num to "X"

# Display a column to the console
  #Print the column? with match

# Display the board to the console (prettily)
  #Print the whole board, one array per line

#Optional: Make a true bingo board
  #Create new board list containing 5 lists
  #Generate 5 random numbers in ranges 1-15, 16-30, 31-45, 46- 60, 61-75
  #Put numbers into a list UNLESS they're already in it
  #Replace the 3,3 with "X"

Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @bingo = ["B", "I", "N", "G", "O"]
    @letter = rand 4
    @num = rand 1..100
    p "#{@bingo[@letter]} #{@num}"
  end

  def check
    @bingo_board[@letter].map! do |number|
      if number == @num
        number = "X"
      else
        number
      end
    end
    p @bingo_board[@letter]
  end

  def display
    @bingo_board.each do |row|
      puts print row
    end
  end
end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
#Changed to work with true bingo board
  def call
    @bingo = ["B", "I", "N", "G", "O"]
#Letter is defined as an integer to work better with array indexes in check
    @letter = rand 0..4
    @num = rand 1 + (15*@letter)..15 + (15*@letter)
    puts "#{@bingo[@letter]} #{@num}"
  end
#Checks for numbers in row that equal @num, changes them to X
  def check
    @bingo_board[@letter].map! { |number| number == @num ? "X" : number }
    puts "#{@bingo[@letter]} : #{@bingo_board[@letter]}"
  end
#Puts each row on its own line, maintains array styling with print
  def display
    puts "===Current Board Status==="
    @bingo_board.each { |row| puts print row }
  end
#Creates a true bingo board and sets it as the main @bingo_board
  def create
    board = Array.new
#Defines the starting number in the range
    num_range = 1
#Makes 5 new arrays, each populated by 5 unique random numbers
    5.times do
      row = Array.new
      until row.length == 5
#Creates random number within range of 15 possible, attempts to push into the row unless the row already has that number
        random_num = rand(num_range..num_range+14)
        row << random_num unless row.include? random_num
      end
      board << row
      num_range += 15
    end
    board[2][2] = "X"
    @bingo_board = board
    display
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.create

end

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  This challenge was not that hard to pseudocode since we were provided with the overall structure to start. I almost always start that way and then work out the specific steps needed to complete each step, so having the structure already made it easier to pseudocode. I like my pseudocoding style. It's worked well for me so far.

What are the benefits of using a class for this challenge?

  Using a class makes the bingo board much more malleable than, say, using a method. We want to perform multiple actions with our board, such as call, check, and display it. When you want to perform multiple actions upon or using the same object, it's best to write a class. It's helpful that instance variables can be accessed by different methods inside of the class.

How can you access coordinates in a nested array?

  To access coordinates (as on a theoretical grid), you need to access the parent arrays, then the sub-arrays by their position inside the parent. For example, if you wanted to access the first object on the first line of our bingo board, you'd use board (to access the parent array), [0] (to access the first array), and [0] (to access the first element). In the end, you'd get board[0][0].

What methods did you use to access and modify the array?

  I ended up going with #map! for the check method. I chose #map! because it is conveniently destructive, an aspect other iterators tend not to have. To display, I just used #each since I didn't really need to do anything fancy. For my true bingo board creator, I was unable to make an iterator work when populating the board, so I found a different solution.

How did you determine what should be an instance variable versus a local variable?

  Everything that needed to be accessed by multiple methods had to be an instance variable. That turned out to be most everything in the call and check methods. However, when I got to my create method, I found that everything could pretty much work internally and divorced from the rest of the methods. For these, I used local variables, until the end where I set the board generated to the main board for the true bingo board method.

What do you feel is most improved in your refactored solution?

  Overall, I did a lot of shortening in my refactor. I changed a few multi-line blocks into single lines. But the best thing about my refactored solution is that it works with the true bingo board creator. I changed the call method so that it produces a valid random letter and number. I didn't show it, but I first used a very long if/else statement to correctly modify the range based on what letter was chosen. I'm a little proud of my refactor of my refactored call method where I included that modification in the range.

=end