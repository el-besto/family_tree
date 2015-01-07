require_relative 'grandparent'

class Parent < Grandparent
  #class variables
  @@children = 0

  def initialize(name, age, gender)
    super
  end

  def children
    @@children
  end

end

