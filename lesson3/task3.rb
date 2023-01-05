# Заполнить массив числами фибоначчи до 100
first = 0
second = 1
nextterm = 0

fib_amount = 11

fibonacci = []

fib_amount.times do
    a = nextterm
    nextterm = first + second
    first = second
    second = nextterm
    fibonacci << a

end

puts fibonacci