class Rectangle
  def initialize (width, length)
    @width = width
    @length = length
  end

  def area 
    area = @length*@width
  end

  def perimeter
    perimeter = (2*@length) + (2*@width)
  end
end


r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
