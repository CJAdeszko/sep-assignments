require_relative 'node'

class MinBinaryHeap
  attr_accessor :heap

  def initialize(root)
    @root = root
    @heap = [root]
  end


  def insert(root, node)
    @heap.push(root) unless @heap.include?(root)
    @heap.push(node)
    heapify_up(@heap.size - 1)
  end


  def find(root,data)
    @heap.each do |n|
      if n.title == data
        return n
      end
    end
    return nil
  end


  def delete(root, data)
    return if data.nil?

    node = find(root, data)

    swap(@heap.index(node), @heap.size - 1)

    deleted = @heap.pop()

    heapify_down(0)
  end


  def print(root)
    @heap.each do |n|
      puts "#{n.title}: #{n.rating}"
    end
  end


  def heapify_up(index)
    parent_index = ((index - 1)/2).floor

    set_children(index) if !@heap[index].has_children?

    return if index < 1

    if @heap[parent_index].rating <= @heap[index].rating
      set_children(parent_index)
      return
    end

    unset_children(parent_index) if @heap[parent_index].has_children?

    swap(index, parent_index)

    heapify_up(parent_index)
  end


  def swap(source_index, target_index)
    @heap[source_index], @heap[target_index] = @heap[target_index], @heap[source_index]
  end


  def unset_children(index)
    @heap[index].left = nil
    @heap[index].right = nil
  end


  def set_children(index)
    @heap[index].left = @heap[2*index + 1]
    @heap[index].right = @heap[2*index + 2]
  end


  def heapify_down(index)
    child_index = (2*index + 1)

    if child_index > @heap.size - 1
      @heap.each_with_index do |n, i|
        set_children(i)
      end
      return
    end

    left_child = @heap[child_index]
    right_child = @heap[child_index + 1]

    if child_index < @heap.size - 1 && right_child.rating < left_child.rating
      child_index += 1
    end

    return if @heap[index].rating <= @heap[child_index].rating

    swap(index, child_index)

    heapify_down(child_index)
  end

end
