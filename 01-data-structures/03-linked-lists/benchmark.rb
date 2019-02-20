require 'benchmark'
require_relative 'linked_list'
require_relative 'node'

#Compare the time it takes to create a 10,000 item Array to appending 10,000 items to a Linked List.
n = 10000
array = []
linked_list = LinkedList.new

Benchmark.bmbm do |x|
  x.report("array: ") { for i in 1..n; array[i] = n; end }
  x.report("linked list: ") { for i in 1..n; linked_list.add_to_tail(Node.new(n)); end }
end

#Compare the time it takes to access the 5000th element of the Array and the 5000th Node in the Linked List.
a = Array.new(5000)
e = 5000
l = LinkedList.new
l.add_to_tail(Node.new(e))

Benchmark.bmbm do |x|
  x.report("array: ") {  a.last }
  x.report("linked list: ") {  l.tail }
end

#Compare the time it takes to remove the 5000th element from the Array to removing the 5000th Node in the Linked List

Benchmark.bmbm do |x|
  x.report("array: ") {  a.pop }
  x.report("linked list: ") {  l.remove_tail }
end
