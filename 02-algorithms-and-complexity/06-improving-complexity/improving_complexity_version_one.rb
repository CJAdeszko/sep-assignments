def optimized_ruby(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.delete_at(combined_array.length-1)]

  for val in combined_array
    i = 0
    while i < sorted_array.length
     sorted_val = sorted_array[i]
      if val < sorted_val
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
      i+=1
    end
  end

  # Return the sorted array
  sorted_array
end
