require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quicksort'

n = 50
collection = []

for i in 1..n do
  random_number = Random.new.rand(100)
  collection << random_number
end


Benchmark.bm do |x|
  x.report("quicksort: ")  { quicksort(collection, 0, collection.length - 1) }
  x.report("heap_sort: ")  { heap_sort(collection) }
  x.report("bucket_sort: ")  { bucket_sort(collection, 10) }
end
