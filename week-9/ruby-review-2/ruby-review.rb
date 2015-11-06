# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# Define 10 empty variables, one for each row and column
# Define method horizontal check
#   IF a row has 5 "x"
#     Return true
# Define method vertical check
#   IF a column has 5 "x"
#     Return true
# Define method diagonal check
#   IF board spots [0][0], [1][1], [2][2], [3][3], [4],[4] == "x"
#     Return true
#   IF board spots [0][4], [1][3], [2][2], [3][1], [4][0] == "x"
#     Return true
# Define method check
#   Runs all 3 checks
#   IF any are true
#     Prints "Bingo!"




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer

#   def initialize bingo_board
#     @row0, @row1, @row2, @row3, @row4 = nil
#     @column0, @column1, @column2, @column3, @column4 = [],[],[],[],[]

#     n = 0
#     bingo_board.map do |row|
#       eval "@row#{n} = row"
#       n += 1
#     end

#     n = 0
#     5.times do
#       bingo_board.each do |row|
#         eval "@column#{n} << row[n]"
#       end
#       n += 1
#     end
#   end

#   def check
#     if horizontal_check == true || vertical_check == true || diagonal_check == true
#       puts "Bingo!"
#     end
#   end

#   private

#   def horizontal_check
#     n = 0
#     5.times do
#       eval "return true if @row#{n} == ['x','x','x','x','x']"
#       n += 1
#     end
#   end

#   def vertical_check
#     n = 0
#     5.times do
#       eval "return true if @column#{n} == ['x','x','x','x','x']"
#       n += 1
#     end
#   end

#   def diagonal_check
#     n = 0
#     x_counter = 0
#     5.times do
#       eval "x_counter += 1 if @row#{n}[n] =='x'"
#       n += 1
#     end
#     return true if x_counter == 5

#     a = 0
#     b = 4
#     x_counter = 0
#     5.times do
#       eval "x_counter += 1 if @row#{a}[b] == 'x'"
#       a += 1
#       b -= 1
#     end
#     return true if x_counter == 5
#   end

# end


# Refactored Solution
class BingoScorer

  def initialize bingo_board
    @row0, @row1, @row2, @row3, @row4 = nil
    @column0, @column1, @column2, @column3, @column4 = [],[],[],[],[]

    row_num = 0
    bingo_board.map do |row|
      eval "@row#{row_num} = row"
      row_num += 1

      col_num = 0
      5.times do
        eval "@column#{col_num} << row[col_num]"
        col_num += 1
      end

    end
  end

  def check
    if horizontal_check || vertical_check || diagonal_check
      puts "Bingo!"
    end
  end

  private

  def horizontal_check
    num = 0
    5.times do
      eval "return true if @row#{num} == ['x','x','x','x','x']"
      num += 1
    end
  end

  def vertical_check
    num = 0
    5.times do
      eval "return true if @column#{num} == ['x','x','x','x','x']"
      num += 1
    end
  end

  def diagonal_check
    num = 0
    x_counter = 0
    5.times do
      eval "x_counter += 1 if @row#{num}[num] =='x'"
      num += 1
    end
    return true if x_counter == 5

    row_num = 0
    col_num = 4
    x_counter = 0
    5.times do
      eval "x_counter += 1 if @row#{row_num}[col_num] == 'x'"
      row_num += 1
      col_num -= 1
    end
    return true if x_counter == 5
  end

end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
test = BingoScorer.new horizontal
test.check
test2 = BingoScorer.new vertical
test2.check
test3 = BingoScorer.new right_to_left
test3.check
test4 = BingoScorer.new left_to_right
test4.check

# Reflection
=begin
What concepts did you review in this challenge?

  I reviewed a bit of syntax to get back into the swing of Ruby. I also
  wouldn't say it's review, but I found the extremely useful Ruby method
  #eval. #eval will take a string and evaluate it as though it were a block.
  This was incredibly useful for setting incremental variables equal to
  different values.

What is still confusing to you about Ruby?

  I still had some trouble getting my @column maker to function properly. I
  had to tinker around to get it to work. I did get it, but I couldn't
  immediately pinpoint what the problem was.

What are you going to study to get more prepared for Phase 1?

  I'm going to continue studying Ruby a bit. This is unrelated to this
  challenge, but I'd also like to get more comfortable with jQuery.

=end