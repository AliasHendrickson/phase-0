[addressformat](address/my_solution.rb)
[definemethod](define-method/my_solution.rb)
[mathmethods](math/my_solution)


puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Greetings," + " " + first_name + " " + middle_name + " " + last_name

puts "What's your favorite number?"
number = gets.chomp
better_number = number.to_i + 1
puts "That's good, but how about a better number..say.." + better_number.to_s + "?"

=begin
How do you define a local variable?
   Define a local variable by assigning it to a value with the assignment operator, "=".

How do you define a method?
  def method_name(paramater,parameter,parameter)
    end

What is the difference between a local variable and a method?
  I have a hard time comparing them. A local variable is an object that you want to keep around and store a value in. A method is like a verb that a local variable can execute.

How do you run a ruby program from the command line?
  ruby file-name.rb

How do you run an RSpec file from the command line?
  rspec file-name.rspec

What was confusing about this material? What made sense?
  I had some trouble with the rspec test. I found that if I had a single character out of place then it would come up with a failure. Converting numbers to strings and vice versa made sense. I was a little confused when I had to use those methods inside another method, but the logic made sense when I wrapped my head around it in the end. The order that the computer goes through when it is executing commands and reading methods and variables was a bit confusing, and I had to think about it.
=end