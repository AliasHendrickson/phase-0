# Calculate a Grade

# I worked on this challenge [with:Ben Sanecki].


# Your Solution Below
  def get_grade(average)
    case average
    when 90..100
      then "A"
    when 80..89
      then "B"
    when 70..79
      then "C"
    when 60..69
      then "D"
    when 0..60
      then "F"
    end
  end
