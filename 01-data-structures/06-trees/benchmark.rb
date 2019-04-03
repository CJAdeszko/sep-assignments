require 'benchmark'
require_relative 'binary_tree/binary_search_tree'
require_relative 'binary_tree/node'
require_relative 'min_binary_heap/binary_heap'


n = 100000
r = Node.new("1", 1)
b = BinarySearchTree.new(r)
m = MinBinaryHeap.new(r)

Benchmark.bm do |x|
  x.report("binary_search_tree: ")  { for i in 2..n; b.insert(r, Node.new(i.to_s, i)); end }
  x.report("min_binary_heap: ")  { for i in 2..n; b.insert(r, Node.new(i.to_s, i)); end }
end
