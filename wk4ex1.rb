class Dog
  def initialize (name)
    @name = name
  end

  def bark
    "#{@name} says 'Woof!'"
  end

  def eat
    'I want steak!'
  end

  def chase_cat
   'There goes a cat!'
  end
end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat
