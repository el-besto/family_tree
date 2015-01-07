require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
  attr_reader :favColor
  
  #class variables
  @@favColor = ["orange", "green", "purple", "blue", "tangerine"]

  def initialize(name, age, gender)
    super
    @favColor = @@favColor.sample
  end

  def colors
    @@favColor
  end

  def growUp
    @age += 1
  end

  def talk(*text)
    if self.age > 2
      puts text + " " + @favColor
    elsif self.age < 2
      puts "Wahh!"
    end
  end

end

