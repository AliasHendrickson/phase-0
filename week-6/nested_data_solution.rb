# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.each_with_index do |element, i|
  if element.kind_of?(Array)
    element.each_with_index {|inner, i| element[i] = inner + 5}
  else
    number_array[i] = element + 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# Reflection:
=begin
**What are some general rules you can apply to nested arrays?**
  Rules for what? Umm, how about rules for approaching the problem: think slowly, and proceed down the rabbit hole with caution. Just like most of the concepts in Ruby we have worked with, it can be easy to lose your way. Think about each step, and flesh out the flow control in your mind as you go.
**What are some ways you can iterate over nested arrays?**
  Like the given example, iterating over the parent structure and asking each element what kind of element it is is a straight forward way of going about it, but with multiple nested structures, this can get confusing fast. I imagine there is a way to isolate each nested structure and work with only that structure's elements.
**Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?**
  I actually hadn't used the kind_of? method before. It's handy! It specifies what kind of structure we are working with, so we can iterate through each structure differently.
=end
