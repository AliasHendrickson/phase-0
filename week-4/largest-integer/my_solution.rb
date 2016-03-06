# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums == []
    return nil
  end
  largest_so_far = list_of_nums[0]
  array = array_size(list_of_nums)
  for i in 0..array - 1
    if largest_so_far < list_of_nums[i]
      largest_so_far = list_of_nums[i]
    end
  end
  return largest_so_far
end

def array_size(list_of_nums)
  size = 0
  i = 0
  while list_of_nums[i] != nil
    size += 1
    i += 1
  end
  return size
end