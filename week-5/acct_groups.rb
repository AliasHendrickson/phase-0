##Pseudocode

# Iterate through the list of names
# => Divide the list into sets of 4
# => Make each set of 4 a separate group
# => Increment the group number


list_of_names = [ "Alec", "Bubba", "Goofy", "Blossom", "Gary", "Larry", "Mary", "Harry" ]

def group_maker(list_of_names)
  groups = []
  list_of_names.each_slice(4) { |a| groups << a }
  groups
  groups.each_with_index do |group, i|
    puts "Group#{i + 1}: #{group}"
  end
end
group_maker(list_of_names)

=begin
**What was the most interesting and most difficult part of this challenge?**
  The number of different methods that I could potentially use was really interesting and also really difficult. I found that I was bouncing around between methods because I started with an idea of what I wanted to do, and I tried to find a method to fit what I had in mind. This led to quite a bit of frustration and failed attempts.
**Do you feel you are improving in your ability to write pseudocode and break the problem down?**
  I feel like I am thinking more about each step that I have to take before diving in, and I do check back with my pseudocode more often when I am having trouble finding a solution. It feels like I am laying an outline for my code, and trying to find methods to fit the outline. I am running into trouble with this line of thinking when I am unable to find a method that fits right. Maybe I just need to be more flexible.
**Was your approach for automating this task a good solution? What could have made it even better?**
  I think it's a good solution. To make it better, I could add some logic to check the length of the list and make sure that everyone is getting into equal groups.
**What data structure did you decide to store the accountability groups in and why?**
  I stored the groups in an array because they had a built in index that I could split them up by.
**What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?**
  I learned how to properly use "each_slice" to chop up one array and create another.
=end