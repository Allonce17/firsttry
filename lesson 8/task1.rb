# 1. Создать класс Animal и расширяющие его классы Dog, Cat, Horse.
#    Класс Animal должен содержать переменную класса, отвечающую за количество созданных объектов.
#    Также у него должен быть метод класса, выводящий это количество
# 2. Класс Animal содержит переменные food, location и методы makeNoise, eat, sleep.
#    Метод makeNoise, например, может выводить на консоль "Такое-то животное спит". 
# 3. Dog, Cat, Horse переопределяют методы makeNoise, eat. 
# 4. Добавьте переменные в классы Dog, Cat, Horse, характеризующие только этих животных.
# 5. Создайте класс Ветеринар, в котором определите метод treatAnimal(animal).
#    Пусть этот метод распечатывает food и location пришедшего на прием животного.
# 6. Создайте массив различных животных, в который запишите животных всех имеющихся у вас типов.
#    В цикле отправляйте их на прием к ветеринару. Выведите их количество
class Animal
  @@animal_count = 0

  attr_reader :food, :location

  def initialize(food, location)
    @food = food
    @location = location
    @@animal_count += 1
  end

  def self.animal_count
    puts @@animal_count
  end

  def make_noise
    puts "#{self.class} make noise"
  end

  def eat
    puts "#{self.class} eating"
  end

  def sleep
    puts "#{self.class} sleeping"
  end
end

class Horse < Animal
  attr_reader :name

  def initialize(name, food, location)
    @name = name
    super(food, location)
  end

  def make_noise
    super
  end

  def eat
    puts "#{name} eats #{food}"
  end
end

class Dog < Animal
  attr_reader :name

  def initialize(name, food, location)
    @name = name
    super(food, location)
  end

  def make_noise
    puts "#{name} says BARK!"
  end

  def eat
    puts "#{name} eats #{food}"
  end
end

class Cat < Animal
  attr_reader :name

  def initialize(name, food, location)
    @name = name
    super(food, location)
  end

  def make_noise
    puts "#{name} says meow"
  end

  def eat
    puts "#{name} eats #{food}"
  end
end

class Vet
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def treat_animal(animal)
    puts "#{animal.food}, #{animal.location}"
  end
end

some_animal = Animal.new('food', 'location')
tusik = Dog.new('Tusik', 'meat', 'booth')
felis = Horse.new('Felis', 'grass', 'ranch')
esha = Cat.new('Esha', 'feed', 'flat')
doctor = Vet.new('veterinarian')
array = [some_animal, felis, tusik, esha]

array.each { |animal| doctor.treat_animal(animal) }

Animal.animal_count

