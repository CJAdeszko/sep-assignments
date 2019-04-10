require 'benchmark'
require_relative 'fibonacci_iterative'
require_relative 'fibonacci_recursive'

Benchmark.bm do |x|
  x.report("fibonacci_iterative: ") { fib(20) }
  x.report("fibonacci_recursive: ") { fib_recursive(20) }
end
