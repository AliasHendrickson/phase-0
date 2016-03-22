# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #DEFINE list of letters
  #DEFINE list of integers
  #Output random values from each list
  #Return random values as a pair

# Check the called column for the number called.
  #ITERATE through the bingo_board
  # =>FOR the letter generated
  #   Use the index as a column marker
  #   Compare the value from each array

# If the number is in the column, replace with an 'x'
  #IF the column number matches the generated number
  #Replace the column number with 'X'
  #If the number does not match, generate another letter/number pair

# Display a column to the console
  #Why? The instructions say nothing about this.

# Display the board to the console (prettily)
  #Display each array from the board on a separate line

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #DEFINE list of letters
  #DEFINE list of integers
  #Output random values from each list
  #Return random values as a pair

  def rand_gen
    numbers = (1..100).to_a
    letters_array = ['B', 'I', 'N', 'G', 'O']

    return call = letters_array.shuffle[0] << numbers.shuffle[0].to_s
  end

  # Check the called column for the number called.
  #ITERATE through the bingo_board
  # =>FOR the letter generated
  #   Use the index as a column marker
  #   Compare the value from each array

  def check(call)
    @bingo_board.each_with_index do |array, index|
      if call[0] == 'B'
        iterate_array0(call)
      elsif call[0] == 'I'
        iterate_array1(call)
      elsif call[0] == 'N'
        iterate_array2(call)
      elsif call[0] == 'G'
        iterate_array3(call)
      elsif call[0] == 'O'
        iterate_array4(call)
      end
      p @bingo_board[index] = array
    end
    p call
  end

  def iterate_array0(call)
    @bingo_board.each do |array|
      if array[0] == (call[1..2].to_i || call[1..3].to_i)
        array[0] = 'X'
      end
    end
  end

    def iterate_array1(call)
    @bingo_board.each do |array|
      if array[1] == (call[1..2].to_i || call[1..3].to_i)
        array[1] = 'X'
      end
    end
  end

    def iterate_array2(call)
    @bingo_board.each do |array|
      if array[2] == (call[1..2].to_i || call[1..3].to_i)
        array[2] = 'X'
      end
    end
  end

    def iterate_array3(call)
    @bingo_board.each do |array|
      if array[3] == (call[1..2].to_i || call[1..3].to_i)
        array[3] = 'X'
      end
    end
  end

    def iterate_array4(call)
    @bingo_board.each do |array|
      if array[4] == (call[1..2].to_i || call[1..3].to_i)
        array[4] = 'X'
      end
    end
  end

  def checks
    return check(rand_gen)
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.rand_gen
new_game.checks

#Reflection
=begin
**How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?**
  Pseudocoding was tough, but very helpful. I like to talk myself through the challenge, and write down what I'm saying/thinking on a pad first (like pseudo-pseudo code >_o). The process of breaking things down into smaller chunks, and wrapping my mind around the bigger picture at the same time helps me keep the problem in perspective. The more I define the problem up front, the easier it is to stay on track when I research methods.
**What are the benefits of using a class for this challenge?**
  Instance methods and variables! Making many mini methods (say that as many times as you like) helped SO much with the logic in this challenge. I was initially trying to do nested if statements, which was a mindbender.
**How can you access coordinates in a nested array?**
  You can use bracket notation like so, array[0][0]. This will access the first element of the first data structure in the collection "array". I chose to iterate through the parent collection, and use methods to access and modify each inner array.
**What methods did you use to access and modify the array?**
  I only used 'each' and 'each_with_index' to go through the arrays.
**Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?**
  I read about ".select!" which passes a block to an array and deletes elements for which the block returns 'false'. I can see this method being used to build more homogeneous collections. For example, building an array of only even numbers could say
  "array.select! do |x| x.is_even? end".
**How did you determine what should be an instance variable versus a local variable?**
  I only used the given instance variable. I kept everything else local because I didn't see a reason to have them as instance variables.
**What do you feel is most improved in your refactored solution?**
  My refactored approach to frontloading the assignments rather than doing them at the very last minute and after the deadline. These last couple weeks, the last thing I have wanted to do is refactor because I was not giving myself enough time to come back to the assignments with fresh eyes. Also, I feel refactoring is best done with a partner. Refactoring feels like starting over to me. Is there a question I can ask myself before refactoring that will make it feel more like a sprucing up rather than a complete overhaul?
=end