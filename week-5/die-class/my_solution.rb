# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides on the die
# Output: Random number in range of the sides of the die
# Steps:
# => Assign a random number of sides to a newly declared die
# => Print an error if the sides are < 1
# => Output a random number when the die is rolled



# 1. Initial Solution

class Die

  def initialize(sides)
    @sides = sides
      if sides < 1
      raise ArgumentError.new("No such thing as invisible dice")
      end
  end

  def sides
    return @sides
  end

  def roll
    rand(1..@sides)
  end
end




# 3. Refactored Solution




# 4. Reflection
=begin
**What is an ArgumentError and why would you use one?**
  An ArgumentError is a message that informs the user that they are trying to give the method something that it is not equipped to work with. I would use one to point the user in the right direction if they are off-base about what the method can do.
**What new Ruby methods did you implement? What challenges and successes did you have in implementing them?**
  I used rand which I hadn't used before, and I first put the ArgumentError message in the wrong method. I had it in the "sides" method at first, but it makes more sense to have it right when the object is initialized.
**What is a Ruby class?**
  A class is an object that holds the framework for the many objects it is responsible for.
**Why would you use a Ruby class?**
  A class is useful for setting rules for certain types of objects that will show up in massive quantities. They are quicker ways to set rules than defining a thousand objects that essentially do the same thing.
**What is the difference between a local variable and an instance variable?**
  A local variable is only accessible within the method that it is defined. An instance variable can be accessed from anywhere in the class, although it might not have the same value everywhere, so we need to be careful where we assign it and where we call it.
**Where can an instance variable be used?**
  It can be used anywhere in the class, but we need to be careful about where we define it and where we call it.
=end