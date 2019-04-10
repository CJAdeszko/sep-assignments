require 'benchmark'
require_relative 'binary_tree/binary_search_tree'
require_relative 'binary_tree/node'
require_relative 'min_binary_heap/binary_heap'


n = 100000
r = Node.new("1", 1)
m = MinBinaryHeap.new(r)
b = BinarySearchTree.new(r)

for i in 2..n
  b.insert(r, Node.new(i.to_s, i))
end

for i in 2..n
  m.insert(r, Node.new(i.to_s, i))
end

Benchmark.bm do |x|
  x.report("binary_search_tree_find: ")  { b.find(r, "50000") }
  x.report("min_binary_heap_find: ")  { m.find(r, "50000") }
  x.report("binary_search_tree_delete: ")  { b.delete(r, "5000") }
  x.report("min_binary_heap_delete: ")  { m.delete(r, "5000") }
end
