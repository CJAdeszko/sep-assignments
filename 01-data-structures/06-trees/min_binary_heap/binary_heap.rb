require_relative 'node'

class MinBinaryHeap
  def initialize(root)
    @root = root
    @heap = []
  end


  def insert(root, node)
    @heap.push(root) unless @heap.select { |n| n == root }
    @heap.push(node)
    heapify_up(@heap.size - 1)
  end


  def heapify_up(index)
    parent_index = ((index - 1)/2).floor

    return if index <= 1

    return if @heap[parent_index].rating >= @heap[index].rating

    swap(index, parent_index)

    heapify_up(parent_index)
  end


  def swap(source, target)
    @heap[source], @heap[target] = @heap[target], @heap[source]
  end


  def find(root,data)
  end


  def delete(root,data)
  end


  def print(root)
  end

end
