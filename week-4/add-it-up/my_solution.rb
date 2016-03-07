# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of Numbers
# Output: Sum of all the numbers in the array
# Steps to solve the problem.

# Iter from i to length of array
# Save first value in array to variable total
# Add i to total
# Return the total

# 1. total initial solution
def total(array)
  total = 0
  for i in 0..array_size(array) - 1
    total = array[i] + total
  end
  return total
end

def array_size(input)
  size = 0
  i = 0
  while input[i] != nil
    size += 1
    i += 1
  end
  return size
end


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Single string
# Steps to solve the problem.
# Iter from i to length of array
# Save first value in array to variable total
# Add i and a blank space to total
# Return the total

# 5. sentence_maker initial solution

# 6. sentence_maker refactored solution
def sentence_maker(array)
  sentence = ""
  i = 0
  for i in 0..array_size(array) - 1
    if i == array_size(array) - 1
      sentence = sentence + array[i].to_s
    else
      sentence = sentence + array[i].to_s + " "
    end
  end
  sentence[0] = sentence[0].upcase
  sentence = sentence + "."
  return sentence
end
