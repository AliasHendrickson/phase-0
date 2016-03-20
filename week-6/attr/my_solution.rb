#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection
=begin
**What are these methods doing?**
  The methods are defining name, age and occupation then they are changing them. The methods in between that don't modify the output are printing periods and slowing the processing of the information.
**How are they modifying or returning the value of instance variables?**
  They are modifying the value by setting the instance variable equal to the argument that is given to the "change" methods.

**What changed between the last release and this release?**
  Using 'attr_reader :age' at the beginning made the age variable accessible from outside of the initialize method. Therefore, we didn't have to create a new instance method to define the value for age this time.
**What was replaced?**
  The method that defined the value for age was replaced with attr_reader :age
**Is this code simpler than the last?**
  I think the code is simpler because if we want to be able to change the value of the variables, we shouldn't have to create a whole method to do so. Using attr_reader seems cleaner.

**What changed between the last release and this release?**
  Using 'attr_writer :age' in the beginning made the instance variable "age" modifiable without writing a separate instance method. At the end when age was called for to change, "change_my_age" was switched to just ".age".
**What was replaced?**
  The instance method changing the value of @age was replaced with 'attr_writer :age'. Also, when calling the profile instances, the methods aren't named "change_my" anymore. They are just named like the variables themselves.
**Is this code simpler than the last?**
  There are less instance methods, and a clear statement in the beginning of what variables are modifiable and accessible. I think this code is simpler, but it might be a little less obvious with the wording of what is happening.

**What is a reader method?**
  A reader method allows the variable to be returned outside of the class in which it is defined.
**What is a writer method?**
  A writer method allows the user to change the value of the variable in question, but not to see the changes.
**What do the attr methods do for you?**
  Attr methods give me more flexibility for calling instance variables inside and out of different object classes.
**Should you always use an accessor to cover your bases? Why or why not?**
  Accessors are tempting, but they should not always be used. Sometimes I will want to be careful with allowing certain values to be modified. I can use readers when I want to see the value, but I want the value to stay as it is.
**What is confusing to you about these methods?**
  I'm a little confused about when the changes are implemented to an instance variable when I use "attr_accessor". Do the changes happen when the methods are called? Are the changes permanent, or just for the method that the variable was called with?
=end