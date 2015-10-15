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
#Letter is defined as an integer to work better with array indexes
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
    board = Array.new 5, []
    num_range = 1
    5.times do
      row = Array.new
      until row.length == 5
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



What are the benefits of using a class for this challenge?
How can you access coordinates in a nested array?
What methods did you use to access and modify the array?
How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?
=end