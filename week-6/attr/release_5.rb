# Release 5:


class NameData

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def print_name
    return @name
  end
end

class Greetings

  def initialize
    @instance = NameData.new("Alec")
  end

  def greet
    puts "Salutations, #{@instance.print_name}!"
  end
end


greeter = Greetings.new
greeter.greet