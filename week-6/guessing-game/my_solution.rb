# Build a simple guessing game


# I worked on this challenge [by myself, with one question to Slack].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: Symbol
# Steps:
# => Define method that compares guess to answer
# => Return symbols :low, :high, or :correct according to comparison
# => Check if game is solved by checking how guess compared to answer


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      p :high
    elsif @guess < @answer
      p :low
    else
      p :correct
    end
  end

  def solved?
    if @guess == @answer
      p true
    else
      p false
    end
  end

end



# Refactored Solution






# Reflection
=begin
**How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?**
  Instance methods and variables are like something that can get called on at any time, and then it goes into hiding once it's task is complete. They are like Batman.
**When should you use instance variables? What do they do for you?**
  Instance variables are convenient for classes because we can define rather common things like names in different classes, but the instance variable will only acknowledge its value that is associated with the initiated class.
**Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?**
  Know what order the program is executing logic. Keep track of what is being passed through the program and what is being returned and operated on. I had an issue with the placement of my instance variables when I was defining them. I first had two instance variables in the initialize method, but only one method argument. I solved this by moving one instance variable to a different instance method (the method where I was actually making use of the variable) and it worked.
**Why do you think this code requires you to return symbols? What are the benefits of using symbols?**
  Symbols are quicker for Ruby to look up. Like integers, they are immutable and unique, meaning they have unique object ID's and they cannot be modified.
=end