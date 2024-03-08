# переписать ниже примеры из первого часа из видеолекции: 
# https://youtu.be/4igzy3bGVkQ
# по желанию можно поменять значения и попробовать другие функции

# Вывод строки
println("Test string")

# построчный вывод
123
456;

# Определение типов данных
my_answer = 42
typeof(my_answer)

my_pi = 3.1415
typeof(my_pi)

my_name = "Peter"
typeof(my_name)

my_name2 = my_name
typeof(my_name2)

# Базовая математика
sum = 3 + 7
difference = 10 - 5
product = 7 * 8
quotient = 100 / 10
power = 5^3
modulus = 500 % 3

# Работа со строками
s1 = "This is my string"
s2 = """This is my string 2"""
"""Look, Mum, no "errors!!!"""
typeof('a')
name = "Peter"
num_fingers = 10
num_toes = 10
println("Hello, my name is $name")
println("I have $num_fingers fingers and $num_toes toes. That is $(num_fingers + num_toes) digits in all")
string("How many cats ", "are too many cats?")
string("I dont know, but ", 10, " are too few/")
s3 = "How many cats ";
s4 = "are too many cats?";
s3 * s4
"$s3$s4"

# Структуры данных

# Словари
myphonebook = Dict("Jenny" => "867-5309", "Ghostbusters" => "555-2368")
myphonebook["Jenny"]
myphonebook["Kramer"] = "555-FILK"
myphonebook
pop!(myphonebook, "Jenny")
myphonebook
myphonebook["Peter"]

# Кортежи
myfavoriteanimals = ("penguins", "cats", "sugargliders")
myfavoriteanimals[1]
myfavoriteanimals[1] = "otters"

# Массивы
myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]
fibonacci = [1, 1, 2, 3, 5, 8, 13]
mix = [1, 2, 3.0, "AaAa"]
myfriends[1]
push!(fibonacci, 21)
pop!(fibonacci)
fibonacci

# Многомерные массивы
favorites = [["koobideh", "chocolate", "eggs"],["penguins", "cats", "sugargliders"]]
numbers = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
rand(4, 3)
rand(4, 3, 2)

# Циклы
# while
n = 0
while n < 10
    n += 1
    println(n)
end
n

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]
i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi $friend, it's great to see you!")
    i += 1
end

# for
for n in 1:10
    println(n)
end

for item in myfriends
    println("Hi $item, its great to see you")
end

for n = 1:10
    println(n)
end

m, n = 5, 5
A = zeros(m, n)
for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end
A

B = zeros(m, n)
for j in 1:m, i in 1:n
    B[i, j] = i + j
end
B

# Генераторы массивов
C = [i + j for i in 1:m, j in 1:n]
for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end

# Условия
# if
x = 5
y = 10
if x > y
    println("$x is larger than $y")
elseif y > x
    println("$y is larger than $x")
else
    println("numbers are equal") 
end

(x > y) ? x : y
(x > y) && println("$x is larger than $y")
(x < y) && println("$y is larger than $x")

# функции
function sayhi(name)
    println("Hi $name, it's great to see you!")
end

function f(x)
    x^2
end


sayhi("Peter")
sayhi(5)
f(20)
f("A")

sayhi2(name) = println("Hi $name, it's great to see you!")
sayhi2("Peter")

# Лямбда-функции
sayhi3 = name -> println("Hi $name, it's great to see you!")
f3 = x -> println(x^2)

sayhi3("Peter")
f3(8)

# Изменяющие и неизменяющие функции
v = [3, 5, 2]
sort(v)
v
sort!(v)
v

# Broadcasting
A = [i + 3*j for j in 0:2, i in 1:3]
f(A)
f.(A)
v = [1, 2, 3]
f.(v)

# Библиотеки
using Pkg
Pkg.add("Example")
using Example
hello("it's me. I was wondering if after all these years you'd like to meet.")
Pkg.add("Colors")
using Colors
palette = distinguishable_colors(500)
rand(palette, 3, 3)
Pkg.add("Plots")
using Plots
x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()
plot(x, y, label="line")
scatter(x, y, label="points")
globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17];
plot(numpirates, globaltemperatures, label="line")  
scatter!(numpirates, globaltemperatures, label="points")
xflip!() 
p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)


methods(-)
@which 3 + 3  
@which 3.0 + 3.0 
@which 3 + 3.0     
import Base: + 
"hello " + "world"
+(x::String, y::String) = string(x, y)
"hello " + "world"

foo(x, y) = println("duck-typed foo")
foo(x::Int, y::Float64) = println("foo with int and float")
foo(x::Float64, y::Float64) = println("foo with float and float")
foo(x::Int, y::Int) = println("foo with int and int")
foo(1, 1)
foo(true, false)
A = rand(1:4,3,3)
B = A
C = copy(A)
[B C]
A[1] = 17
[B C]
x = ones(3)
b = A*x
A'
A
A + A'
A'A
A\b
Atall = A[:,1:2]
display(Atall)
Atall\b
Ashort = A[1:2,:]
display(Ashort)
Ashort\b[1:2]
b
b[1:2]