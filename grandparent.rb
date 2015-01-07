class Grandparent

  attr_reader :name, :age, :gender, :family, :grandchildren
  
  # class variables
  @@family = []
  @@grandchildren = 0

  def initialize(name, age, gender)
    # instance variables
    @name = name
    @age = age
    @gender = gender

    # push this instance to its family arr
    @@family.push(self)
  end

  def self.grandchildren
    @@grandchildren
  end

  def self.family
    @@family
  end

  def showFamily
    @@family.each do |relation, name , age| puts "#{relation}, #{name}, #{age}"
    end
  end

end

