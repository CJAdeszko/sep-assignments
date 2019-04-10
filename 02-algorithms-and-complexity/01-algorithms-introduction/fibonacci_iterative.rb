def fib(n)
  fib_0 = 0
  fib_1 = 1

  if n > 0
    for i in 0...n-1
      temp = fib_0

      fib_0 = fib_1

      fib_1 = temp + fib_1
    end
    return fib_1
  else
    return fib_0
  end
end

puts fib(0)
#0
puts fib(1)
#1
puts fib(2)
#1
puts fib(3)
#2
puts fib(4)
#3
puts fib(5)
#5
puts fib(6)
#8
puts fib(7)
#13
puts fib(8)
#21
puts fib(9)
#34
