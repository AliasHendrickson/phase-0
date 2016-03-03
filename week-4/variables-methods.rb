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