#Взять несколько предметов, которые вас окружают, и описать их,как классы
#Создать по обьекту каждого класса, сравнить их поведение
class Cat
	attr_reader :name
	def inicialize
		@name = name
	end
	def talk(name)
		puts "#{name} says meow"
	end		
end
class Tv
	attr_reader :chanel
	def inicialize
		@chanel = chanel
	end	
	def work(chanel)
		puts "plays #{chanel}"
	end	
end
pet = Cat.new
pet2 = Cat.new
televisor = Tv.new
pet.talk('Eha')
pet2.talk('musya')
televisor.work('NTV')

