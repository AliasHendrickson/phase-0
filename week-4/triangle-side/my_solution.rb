# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  array = [a, b, c]
  array.sort!
  if a == b && b == c && a != 0
    true
  elsif array[0] + array[1] >= array[2] && a != 0 && b != 0 && c != 0
    true
  else
    false
  end
end