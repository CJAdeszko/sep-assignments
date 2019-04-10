def recursive_binary(collection, value)
  low = 0
  high = collection.length - 1
  mid = (low + high) / 2

  if high >= low
    if collection[mid] == value
      return mid
    elsif collection[mid] > value
      return recursive_binary(collection[low..mid-1], value)
    else
      return recursive_binary(collection[mid+1..high], value)
    end
  else
    return "Not Found"
  end
end
