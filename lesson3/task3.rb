# Заполнить массив числами фибоначчи до 100
first = 0
second = 1
next_step = 0

fib_amount = 11

fibonacci = []

fib_amount.times do
    next_step = first + second
    first = second
    second = next_step
    fibonacci << next_step

end

puts fibonacci
