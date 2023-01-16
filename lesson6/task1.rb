#создать класс Soda(для определения типа газировки), принимающий 1 аргумент при инициализации
#(отвечающий за добавку к выбираемому лимонаду). В этом классе реализуйте метод show_my_drink(),
# выводящий на печать "Газировка и {ДОБАВКА}" В случае наличия добаки, а иначе отобразится сдедующая фраза:"Обычная газировка"

#думаю что тут можно и без инициализации через show_my_drink=(additive) и в конце cola.show_my_drink = ""
#но это рещение будет не вприсываться в условие задачи)
#мною было решено вместо 2 условий сделать одно с проверкой наличия добавки
class Soda
	attr_accessor :additive
	def initialize 	
		@additive = additive
	end

	def show_my_drink
        if additive == ""
           puts 'Обычная газировка' 
        else
           puts "Газировка и #{additive}" 
        end
    end
end        

cola = Soda.new
cola.additive = "caramel"
cola.show_my_drink