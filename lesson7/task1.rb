# 1) Реализуйте класс Student (Студент), который будет наследовать от класса User, подобно тому,
#как это сделано в теоретической части урока. Этот класс должен иметь следующие 
#свойства: name (имя, наследуется от User), surname (фамилия, наследуется от User), year (год поступления в вуз).
#Класс должен иметь метод full name() (наследуется от User), 
#с помощью которого можно вывести одновременно имя и фамилию студента. 
#Также класс должен иметь метод course(), который будет выводить текущий курс студента (от 1 до 5). 
#Курс вычисляется так: нужно от текущего года отнять год поступления в вуз. Текущий год получите самостоятельно.
class User
  attr_accessor :name, :surname, :year
  def initialize
    @name = name
    @surname = surname
    @year = year
  end
end

class Student < User
MIN = 1
MAX = 5
  def full_name
    puts "my name is #{name} #{surname}"
  end	
  
  def course
    current_course = Time.new.year - year + 1
    puts "I'm studing on #{current_course} course"
      if current_course < MIN || current_course > MAX 
        raise "invalid year"
      end	
  end	
end

l = Student.new
l.name = 'Alex'
l.surname = 'Petrov'
l.year = 2019
puts l.course
puts l.full_name
