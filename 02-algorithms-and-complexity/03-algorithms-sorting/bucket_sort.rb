def bucket_sort(collection, bucket_size)
  return [] if collection.nil?

  min_value = collection.min
  max_value = collection.max
  bucket_size ||= 5

  bucket_count = ((max_value - min_value) / bucket_size) + 1

  buckets_arr = Array.new(bucket_count)

  for i in 0..buckets_arr.length
    buckets_arr[i] = []
  end

  collection.each do |num|
    j = ((num - min_value) / bucket_size).floor
    buckets_arr[j].push(num)
  end

  collection.clear

  buckets_arr.each do |bucket|
    insertion_sort(bucket)
    bucket.each do |e|
      collection.push(e)
    end
  end

  return collection
end


def insertion_sort(collection)
    for i in 1...(collection.length)
        j=i
        while j>0
            if collection[j-1]>collection[j]
                temp=collection[j]
                collection[j]=collection[j-1]
                collection[j-1]=temp
            else
              break
            end
            j=j-1
        end
    end
    return collection
end
