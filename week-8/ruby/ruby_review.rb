# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# Input: array of integers
# Output: array of integers with string substitutions
# Steps:
# => DEFINE counter to track LOOP progress
# => Set LOOP parameters
# => LOOP through array
# => IF integer is a multiple of 3, replace it with "Fizz"
# => IF integer is a multiple of 5, replace it with "Buzz"
# => IF integer is a multiple of 15, replace it with "FizzBuzz"
# => ELSE RETURN the integer
# => RETURN the new array with replacements

# Initial Solution

def super_fizzbuzz(array)
  fb_array = []
  i = 0
    while i <= 100
      array.each do |num|
       if num % 3 == 0 && num % 5 == 0
        array[i] = "FizzBuzz"
        fb_array << array[i]
       elsif num % 3 == 0
        array[i] = "Fizz"
        fb_array << array[i]
       elsif num % 5 == 0
        array[i] = "Buzz"
        fb_array << array[i]
       else
        fb_array << array[i]
       end
       i += 1
    end
    return fb_array
  end
end


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 3 == 0
      x = "Fizz"
    elsif x % 5 == 0
      x = "Buzz"
    else x
    end
  end
end

# Reflection

**What concepts did you review or learn in this challenge?**
  I reviewed iteration and return values. When I was searching the docs for methods to refactor, I experimented a bit with returning arrays or single values, and ultimately stayed with modifying the original array.

**What is still confusing to you about Ruby?**
  Flow control is still lost on me sometimes. When my code gets too convoluted I have a really hard time following the logic of the computer's evaluation. This forces me to simplify my approach, though.

**What are you going to study to get more prepared for Phase 1?**
  I am going to study flow control, and built in methods, and the other challenges in week 9.