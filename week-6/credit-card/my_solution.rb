# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Buck Melton].
# I spent [2] hours on this challenge.

# Pseudocode

# initialize
# Input: Credit card number as integer.
# Output: If input not 16 digits, raise ArgumentError
# Steps:
#     Convert cc number integer to array of integers
#     Check if cc num has 16 digits
#     If not, raise ArgumentError
#     Store cc integer array as instance variable

# check_card
# Input: None
# Output: True or False
# Steps:
#     Call double_every_other
#     Call sum_all_digits
#     Call multiple_of_10?
# => Return the output of multiple_of_10?

# double_every_other
# Input: Array of integers
# Output: A new array with every other integer doubled,
#     starting with the second to last integer
# Steps:
#     Make copy of array, reversing it
#     Loop through array
#     IF index odd
#         Double integer element
#     Reverse again (to put back in original order), destructive

# sum_all_digits
# Input: Array of integers
# Output: Sum of all individual digits in array
# Steps:
#     Loop through array
#         IF element >= 10
#             Convert to string
#             Convert each element to integer
#             Add the two integers
#             Assign sum to the element
#     Sum the array

# multiple_of_10?
# Input: Output of "sum_all_digits"
# Output: True or False
# Steps:
# => Take modulus of the input and compare to 0
# => Return boolean

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


class CreditCard

    def initialize(cc_num)
        cc_num_ary = []
        cc_str = cc_num.to_s
        cc_str.each_char do | the_char |
            cc_num_ary << the_char.to_i
        end

        if cc_num.to_s.length != 16
            raise ArgumentError.new("Credit card number must be 16 digits")
        end

        @cc_num = cc_num_ary

    end

    def double_every_other

        cc_num_copy = @cc_num.reverse
        cc_num_copy.each_with_index do | the_int, the_index |
            if the_index.odd?
                cc_num_copy[the_index] = the_int * 2
            end
        end

        return cc_num_copy.reverse!

    end

    def sum_all_digits(int_array)

      int_array.each_with_index do |integer, index|
        if integer >= 10
          str_int = integer.to_s
          int_array[index] = str_int[0].to_i + str_int[1].to_i
        end
      end
      sum = 0
      int_array.each { |element| sum += element }
      return sum
    end

    def multiple_of_10?(integer)
      if integer % 10 == 0
        return true
      else
        return false
      end
    end

    def check_card
      temp_array = double_every_other

      temp_integer = sum_all_digits(temp_array)
      multiple_of_10?(temp_integer)
    end
end

# Refactored Solution








# Reflection
=begin
**What was the most difficult part of this challenge for you and your pair?**
  I'd say the most difficult part of this challenge was pseudocoding all of our steps. There was a lot to think about! Once we broke everything down, it was rather simple to find the methods and execute the code.
**What new methods did you find to help you when you refactored?**
  I didn't try to refactor this one.
**What concepts or learnings were you able to solidify in this challenge?**
  Instance variables make more sense now, and arbitrary arguments for instance methods is a bit more clear. It's interesting that passing a method to another method doesn't give executing method an "all access pass" to the argument method's variables, but rather just gives it the return value.
=end