# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: Random selection from the input
# Steps: Define an input variable
# => Capture the number of sides by returning the length of the input variable
# => Roll the die
# => Sift through the values in the input, and output a value at random


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @roll = roll
    if labels == []
      raise ArgumentError.new("You cannot roll a die that has no sides!")
    end
  end

  def sides
    p @labels.length
  end

  def roll
    @roll = @labels.shuffle
    for i in 0..@roll.length - 1
      return @roll[i]
    end
  end
end

# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new("You cannot roll a die that has no sides!")
    end
  end

  def sides
    p @labels.length
  end

  def roll
    p @labels.shuffle[0]
  end
end


# Reflection
=begin
**What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?**
  Instead of using "rand", I had to find a different method to randomize the output of an array of strings. The logic is the same for the rest of the class.
**What does this exercise teach you about making code that is easily changeable or modifiable?**
  Simplicity helps. My first solution worked to pass the tests, but I am not sure why. Also, I saw that I was defining two different variable names to store the same information, so I cut that out and kept just one variable and called it in the different methods. This way I had less variables to work with, and my solution is still readable because the methods define what they are doing with the variable.
**What new methods did you learn when working on this challenge, if any?**
  I learned "shuffle" for shaking up the insides of an array, and I returned a "random" element from the shuffled array by accessing the first value via the zeroth index. Since the contents were already shuffled, I did not need to randomize the output.
**What concepts about classes were you able to solidify in this challenge?**
  Defining variables in the initialization, and raising timely errors as well. Errors are most helpful when they are returned right after the action that caused the error is performed.
=end