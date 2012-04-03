class Dog
  def initialize (name)
    @name = name
  end

  def bark
    puts 'Woof!'
  end

  def eat
    puts 'I want steak!'
  end

  def chase_cat
   puts 'There goes a cat!'
  end
end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat