#Квадратное уравнение.

puts 'введите: a'
a = gets.to_i
puts 'введите: b'
b = gets.to_i
puts 'введите: c'
c = gets.to_i

d = b**2 - (4*a*c)

if d>0
  x1 = (b+Math.sqrt(d))/2*a
  x2 = (b-Math.sqrt(d))/2*a
  puts "ваши корни: #{x1},#{x2}"
elsif d==0
  x1 = (b+Math.sqrt(d))/2*a
  puts "ваш корень: #{x1} "
else
  puts 'нету корней'
end