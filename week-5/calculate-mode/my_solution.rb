# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Buck Melton ]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  # Array of numbers or strings

# What is the output? (i.e. What should the code return?)
  # Array of most frequent elements

# What are the steps needed to solve the problem?
  # Iterate over length of array
    # If new item, store item in collection with count 1
    # If not new item, add 1 to count
  # Find maximum count in collection
  # Return items with maximum count and store them in new collection
  # Return new collection

# 1. Initial Solution

def mode(array)
  item_count = {}
  max_count = 0
  array.each do |item|
    if item_count.has_key?(item)
      item_count[item] += 1
    else
      item_count[item] = 1
    end
  end
  return item_count
end
  max_count = 0
  item_count.each do |the_key, the_value|
   if the_value > max_count
     max_count = the_value
   end
  end
  max_freq_items = []
  item_count.each do |the_key, the_value|
   if the_value == max_count
     max_freq_items << the_key
   end
  end
  max_freq_items = (item_count.select {|the_key, the_val| the_val == max_count}).keys
  return max_freq_items
end

# 3. Refactored Solution

def mode(array)
 item_count = {}
 max_count = 0
 array.each do |item|
   if item_count.has_key?(item)
     item_count[item] += 1
   else
     item_count[item] = 1
   end
   if item_count[item] > max_count
    max_count = item_count[item]
   end
 end

 max_freq_items = []
 item_count.each do |the_key, the_value|
  if the_value == max_count
    max_freq_items << the_key
  end
 end
 return max_freq_items
end


# 4. Reflection
=begin
**Which data structure did you and your pair decide to implement and why?**
  We iterated over the array with the "each" method and used an if/else statement for assigning values. When we talked through the pseudocode we used the word "if" a lot, so we naturally gravitated towards the if statement. It also seemed like the most straight forward way to compare the hash keys and increment the values.
**Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?**
  This was my first pair this week, but yes I did find that we quickly broke this problem down into smaller steps. It felt like there were more steps to this problem than the pad array challenge. Looking at my pseudocode now, we still could have chopped it up even more.
**What issues/successes did you run into when translating your pseudocode to code?**
  We found that our pseudocode was not quite specific enough after we got out of the initial if statement. The weak spots in our method knowledge were exposed by our struggle to transition from the vaguely defined steps to the actual retrieval of the values we needed.
**What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?**
  We made great use of "each", and that was about it. We tried making a few blocks into one-liners, but the readability suffered so we stuck with what we had.
=end