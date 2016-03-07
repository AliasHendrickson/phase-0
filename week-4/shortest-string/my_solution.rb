# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  if list_of_words == []
    return nil
  end
  i = 0
  array_length = array_size(list_of_words)
  smallest_index = 0
  for i in 0..array_length - 1
    if string_length(list_of_words[smallest_index]) > string_length(list_of_words[i])
      smallest_index = i
    end
  end
  return list_of_words[smallest_index]
end

def array_size(list_of_words)
  size = 0
  i = 0
  while list_of_words[i] != nil
    size += 1
    i += 1
  end
  return size
end

def string_length(word)
  i = 0
  size = 0
    while word[i] != nil
      i += 1
      size += 1
    end
  return size
end


