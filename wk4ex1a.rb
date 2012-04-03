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

  def teach_trick trick
    if trick == :dance
      puts "#{@name} is dancing!" 
    elsif trick == :poo
      puts "#{@name} is a smelly doggy!" 
    elsif trick == :laugh
      puts "#{@name} finds this hilarious!" 
    else
      puts "I need something to do."
    end
  end

end

d = Dog.new('Leo')
puts d.bark
puts d.eat
puts d.chase_cat
puts d.teach_trick(:poo)
