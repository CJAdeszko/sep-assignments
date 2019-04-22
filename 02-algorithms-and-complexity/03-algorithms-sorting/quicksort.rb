def quicksort(collection, low, high)
  return [] if collection.empty?

  if low < high
    index = partition(collection, low, high)

    quicksort(collection, low, index - 1)
    quicksort(collection, index + 1, high)
  end

  return collection
end


def partition(collection, low, high)
  pivot = collection[high]
  index = low

  i = index

  while i < high
    if collection[i] <= pivot
      temp = collection[i]
      collection[i] = collection[index]
      collection[index] = temp
      index += 1
    end

    i += 1
  end

  temp = collection[index]
  collection[index] = pivot
  collection[high] = temp
  return index
end
