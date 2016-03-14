# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  # The input is a positive integer with no commas

# What is the output? (i.e. What should the code return?)
  # The output is a comma-separated integer as a string

# What are the steps needed to solve the problem?
  # Convert input to a string
  # Check the length of the input
  # Insert commas
  # Output the modified input

# 1. Initial Solution

def separate_comma(integer)
  array = integer.to_s.reverse
  string_size = array.length
  if string_size > 3 && string_size < 7
    thousands = array.insert(3, ",").reverse
  elsif string_size > 6 && string_size < 12
    thousands = array.insert(3, ",")
    millions = thousands.insert(7, ",").reverse
  else
    return integer.to_s
  end
end

# 2. Refactored Solution
def separate_comma(integer)
  array = integer.to_s.reverse
  string_size = array.length
  case string_size
  when 4..6
    then array.insert(3, ",").reverse
  when 7..9
    then array.insert(3, ",") && array.insert(7, ",").reverse
  else
    return integer.to_s
  end
end
p separate_comma(1000000)


# 3. Reflection
=begin
**What was your process for breaking the problem down? What different approaches did you consider?**
  I figured how to turn the integer into a string, and then I worked with where, when, and how to insert the commas. I considered iterating through each character in the string, turning the string into an array of characters, and using different kinds of iterators.
**Was your pseudocode effective in helping you build a successful initial solution?**
  Not really. I tried too hard for too long to make my initial solution perfect instead of banging it out quickly with a less elegant solution. I have learned my lesson.
**What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?**
  I had trouble refactoring it without completely ripping it apart, so I just used a case to improve the readability a bit. I beat my head against the wall so much in the initial solution that I didn't care too much to go back through and look for more methods.
**How did you initially iterate through the data structure?**
  Initially I tried using a combination of a for loop and an if statement to keep a count of the characters in my string array. I wanted to increment an index and automatically input the the commas when the index hit certain values, but I could not for the life of me get the code to come out right.
**Do you feel your refactored solution is more readable than your initial solution? Why?**
  I feel that the case is cleaner to look at, and it has less words to say. Also, there is less reassignment which saves some typing as well.

=end