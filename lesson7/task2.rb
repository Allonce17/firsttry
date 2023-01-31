# Реализуйте иерархию классов Figure, Circle, Square, Rectangle, Triangle
# с методами area() и perimeter(), которые возвращают площадь и периметр фигуры.
# Используйте полиморфизм.
class Figure
  attr_accessor :side_a, :side_b, :side_c
  def initialize
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
end

class Circle < Figure
  attr_accessor :radius
  def initialize
    @radius = radius
  end	
  def area
    Math::PI * radius ** 2
  end	
  def perimetr
    Math::PI * radius * 2 
  end	
end

class Square < Figure
  def area
    side_a ** 2
  end
	def perimetr
		side_a * 4
	end
end

class Rectangle < Figure
	def area
		side_a * side_b
	end
	def perimetr 
		(side_a + side_b) * 2	
	end	
end

class Triangle < Figure
	def area
	 semi_per = (side_a + side_b + side_c) / 2.0
   Math.sqrt(semi_per * (semi_per - side_a) * (semi_per - side_b) * (semi_per - side_c))
  end
  def perimetr
  	side_a + side_b + side_c
  end
end 	
f = Triangle.new
f.side_a = 3
f.side_b = 5
f.side_c = 4
puts f.area
puts f.perimetr			
