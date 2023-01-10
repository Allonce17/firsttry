# Заполнить массив числами фибоначчи до 100
first = 0
second = 1
next_tern = 0

fib_amount = 11

fibonacci = []

fib_amount.times do
    next_tern = first + second
    first = second
    second = next_tern
    fibonacci << next_tern

end

puts fibonacci
