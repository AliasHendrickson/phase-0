# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.



# --- error -------------------------------------------------------"cartmans_phrase = Screw you guys " + "I'm going home."

# This error was analyzed in the README file.


# --- error -------------------------------------------------------def cartman_hates(thing)
  #while true
   # puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# =>errors.rb
# 2. What is the line number where the error occurs?
# =>170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter was expecting different characters at the end of the code.
# 5. Where is the error in the code?
# => The error is on the last line. Rather, there is a line of code missing.
# 6. Why did the interpreter give you this error?
# => The code cannot be executed if there is not an ending character. Also I don't see anywhere that the method was called.



# --- error -------------------------------------------------------south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# =>  NameError
# 3. What additional information does the interpreter provide about this type of error?
# => It says that 'south_park' is an undefined local variable or method.
# 4. Where is the error in the code?
# => The error is the code itself.
# 5. Why did the interpreter give you this error?
# => The local variable south_park has not been assigned a value.



# --- error -------------------------------------------------------cartman()

# 1. What is the line number where the error occurs?
# =>50
# 2. What is the type of error message?
# =>NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# =>The main:object is an undefined method
# 4. Where is the error in the code?
# => The error is right before the the character "c" in cartman.
# 5. Why did the interpreter give you this error?
# => cartman was not defined as a method so it cannot be called.



# --- error -------------------------------------------------------def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => The interpreter says there are the wrong number of arguments (1 instead of 0)
# 4. Where is the error in the code?
# => The error is in the calling of the method. There should not be an argument in the method call.
# 5. Why did the interpreter give you this error?
# => When the method was defined, it was not given any paramaters, and the code that the method executes can't do anything with the argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 88
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments. 0 instead of 1.
# 4. Where is the error in the code?
# => The error is where the method is called.
# 5. Why did the interpreter give you this error?
# => There are no arguments passed to the method when it is called.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 109
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments. 1 instead of 2.
# 4. Where is the error in the code?
# => The error is in the arguments when the method is called.
# 5. Why did the interpreter give you this error?
# => The method was only given one argument when it was called, but when it was defined it asked for two.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => The error is in trying to multiply an integer by a string.
# 5. Why did the interpreter give you this error?
# => Objects cannot be multiplied by strings.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => It says that we divided by 0.
# 4. Where is the error in the code?
# => The error is in dividing by 0. It can't be done!
# 5. Why did the interpreter give you this error?
# => The interpreter does not know how to divide an integer by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load such file
# 4. Where is the error in the code?
# => I do not have a file named cartmans_essay.md on my computer so it cannot load a file that does not exist.
# 5. Why did the interpreter give you this error?
# => I do not have a file named cartmans_essay.md on my computer so it cannot load a file that does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# => The error that said it was on line 170 was the most difficult to read because I did not know right away what 'end-of-input' meant exactly.
#How did you figure out what the issue with the error was?
# => I used my Google-fu.
#Were you able to determine why each error message happened based on the code?
# => Yes. The errors were relatively straight forward.
#When you encounter errors in your future code, what process will you follow to help you debug?
# => I will check the line that the error is on and follow the arrow to see exactly where it is. If I have to I will google the error type and try to find similar examples.