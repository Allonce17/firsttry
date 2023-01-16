#Николаю требуется проверить, возможно ли из представленных отрезков условной длинны сформировать треугольник.
#Для этого он решил создать класс TriangleChecker, принимающий только положительные числа
#С помощью метода is_triangle() возвращаютя слудующие значения
# -Ура, можно построить треугольник!
# -С отрицательными числами ничего не выйдет!
# -Нужно вводить только числа! 
# -Жаль, но из этого треугольник не сделать

class TriangleChecker
	attr_reader :side_a, :side_b, :side_c
	def initialize(side_a, side_b, side_c)
		@side_a = side_a
		@side_b = side_b
		@side_c = side_c
	end	
	def is_triangle
        if side_a.to_f != side_a  || side_b.to_f != side_b || side_c.to_f != side_c
        	puts 'Нужно вводить только числа!'
        elsif side_a.negative? || side_b.negative? || side_c.negative?
        	puts 'С отрицательными числами ничего не выйдет!'
        elsif side_a > side_b + side_c || side_b > side_a + side_c || side_c > side_b + side_a
        	puts 'Жаль, но из этого треугольник не сделать'   
        else
        	puts 'Ура, можно построить треугольник!'
        end    
	end	
end
tre = TriangleChecker.new(3, 5, 4)
tre.is_triangle 	
