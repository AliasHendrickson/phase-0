# Pad an Array

# I worked on this challenge [with: David Ramirez]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
  # Array, Minimum size of the array, pad

# What is the output? (i.e. What should the code return?)
  # If array length is less than minimum size, output is padded array
  # If array length is greater than or equal to minimum size, return original array
# What are the steps needed to solve the problem?
  # Compare array size to minimum size value
    # If array size < minimum size, add pad value to end of array
    # Else return original array
  # Return array

# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  difference = array.length - min_size
  difference = difference.abs
  if array.length - min_size < 0
    for i in 0..difference - 1
      array.push(value)
    end
  end
  return array
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  difference = new_array.length - min_size
  difference = difference.abs
  if new_array.length - min_size < 0
    for i in 0..difference - 1
      new_array.push(value)
    end
  end
  return new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  difference = min_size - array.length
  if difference > 0
    difference.times do array.push(value) end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  difference = min_size - new_array.length
  if min_size - new_array.length > 0
    difference.times do new_array.push(value) end
  end
  return new_array
end


# 4. Reflection
=begin
**Were you successful in breaking the problem down into small steps?**
  I think we were successful. We missed a step in our pseudocode for creating a new array for the destructive method, but other than that I think we broke it down well.
**Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?**
  We had difficulties due to knowledge gaps with Ruby methods. We succeeded and overcame those gaps by using the Ruby docs. It helped to compare our pseudocode to the method names to see where "plain English" and Ruby's eloquence overlapped, as seen in the refactored solution with the use of the ".times" method.
**Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?**
  We were initially hung up because we forgot to keep the original array intact inside the destructive method.
**When you refactored, did you find any existing methods in Ruby to clean up your code?**
  Yes we used the 'times' method to replace an unneccessary for loop. The method is much easier to read and makes the code simpler as well.
**How readable is your solution? Did you and your pair choose descriptive variable names?**
  Part of me wanted to change the "difference" variable name to something that would make the "times" method sound better out loud, but we left it in. I think other than that one piece, our code is readable and straight forward.
**What is the difference between destructive and non-destructive methods in your own words?**
  The operations that destructive methods perform on an object alter the value of the object, so that the output of the method replaces the original object's value with the altered value. Non-destructive methods keep the original object's value intact, while the output of the method is attached to a new object.
=end