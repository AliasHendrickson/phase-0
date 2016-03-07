# Factorial

# I worked on this challenge [by myself, with: ].

# Iter from 1 as i to number
# Save the value of i in variable
# Multiply variable times i
# Sum variable times i into total

# Your Solution Below
def factorial(number)
  a =* (1..number)
  total = 1
  for i in 0..number - 1
    total = a[i] * total
  end
  return total
end
