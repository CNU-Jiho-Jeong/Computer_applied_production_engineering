function Fibonacci(n) % 함수 정의 

Fibonacci(1) = 1 
Fibonacci(2) = 1

for i = 3:n % x에 a 부터 b까지 순차적으로 대입 -> for x = a:b
    Fibonacci(i) = Fibonacci(i-1) + Fibonacci(i-2)
end



