def heap_sort(collection)
  max_heap = build_max_heap(collection)

  last_element = collection.length-1

  while(last_element > 0)
    swap(collection, 0, last_element)
    heapify(collection, 0, last_element)
    last_element -= 1
  end

  return collection
end


def build_max_heap(collection)
  i = (collection.length / 2) - 1
  i = i.floor

  while(i >= 0)
    heapify(collection, i, collection.length)
    i -= 1
  end
end


def heapify(heap, i, max)

  while(i < max)
    index = i

    left_child = 2*i + 1
    right_child = left_child + 1

    if (left_child < max && heap[left_child] > heap[index])
      index = left_child
    end

    if (right_child < max && heap[right_child] > heap[index])
      index = right_child
    end

    if index == i
      return
    end

    swap(heap, i , index)

    i = index
  end
end


def swap(collection, first_item_index, last_item_index)

  collection[first_item_index], collection[last_item_index] = collection[last_item_index], collection[first_item_index]
end
