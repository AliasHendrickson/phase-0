# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# DEFINE an empty hash
# DEFINE list as items split into separate strings
# FOR each item add to key and add value as += 1
# RETURN hash
# output: [what data type goes here, array or hash?] Hash as key, value pair

def list(items)
  hash = {}
  list = items.split(" ")
  list.each do |x|
    hash[x] = 1
    end
  return hash
end

newlist = list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# DEFINE new method
# PUSH new item to our list
# RETURN new hash

# output:

def add(newlist, newitem)
  newlist[newitem] = 1
  return newlist
end

add(newlist, "lemonade")

# Method to remove an item from the list
# input: item to remove from our list
# steps:
# DEFINE new method that takes an argument for list and item to remove
# SUBTRACT item from list
# RETURN updated list

# output: Updated list with item removed

def remove(newlist, baditem)
  newlist.delete(baditem)
  p newlist
end

remove(newlist, "lemonade")

# Method to update the quantity of an item
# input: Item in question, quantity of that item
# steps: DEFINE new method
# Search hash for item
# Update quantity
# Return updated list
# output: Updated list with new quantity

def quantityupdate(newlist, item, quantity)
  newlist.has_key?(item)
  newlist[item] = quantity
  return newlist
end

quantityupdate(newlist, "apples", 3)


# Method to print a list and make it look pretty
# input:
# steps:
# output:

def printlist(newlist)
  arraylist = newlist.to_a
  puts arraylist
end

printlist(newlist)

=begin
**Reflection**

**What did you learn about pseudocode from working on this challenge?**
  I learned that it gets trickier when methods get called inside each other. Being more specific helps, but it can also get more confusing. Our guide did not really comment on our pseudocode.
**What are the tradeoffs of using Arrays and Hashes for this challenge?**
  With the exception of the first method, we exclusively used hashes because it was convenient to keep the items and their quantities in a key => value pair. I suppose we could have created separate arrays for the items and their quantities, but I feel that code would become convoluted in a hurry.
**What does a method return?**
  A method returns the result of the last line of evaluated code, unless we specify otherwise.
**What kind of things can you pass into methods as arguments?**
  You can pass a method objects like integers, strings, arrays, hashes, and the results of other methods.
**How can you pass information between methods?**
  We did it by setting a variable equal to the result of one method, and passing that variable to another method as an argument.
**What concepts were solidified in this challenge, and what concepts are still confusing?**
  I am still a little fuzzy on calling certain variables inside/outside methods. We called one method inside another, and the outside method did not recognize the name of the variable that was defined inside the inner method. I am more confident with using method outputs as arguments
=end