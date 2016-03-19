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