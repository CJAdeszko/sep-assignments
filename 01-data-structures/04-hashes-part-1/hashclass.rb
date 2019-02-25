class HashClass

  def initialize(size)
    @items = Array.new(size)
  end


  def []=(key, value)
    #Variable to hold index
    i = index(key, self.size)

    #Variable for new HashItem to be added
    new_item = HashItem.new(key, value)

    #If @items at the calculated index == the new_item to be added, do nothing
    if @items[i] == new_item
      return
    #If the @items array at the index calculated using the provided key and current HashClass.size is empty
    #add the new HashItem at the index
    elsif @items[i].nil?
      @items[i] = new_item
    #If the key of the HashItem at the calculated index == the key provided, update the value of the HashItem
    #at the index
    elsif @items[i].key == key
      @items[i].value = value
    #Otherwise, a collision has occured. Resize the HashClass, calculate the index for @items using the new HashClass.size
    #and set @items at the new index = to the new HashItem
    else
        self.resize
        @items[index(key, self.size)] = new_item
    end
  end


  def [](key)
    i = index(key, self.size)
    @items[i].value #Return the value for the HashItem located at the index calculated using the key and the size of the HashClass
  end


  def resize
    #Create a temp array that is twice the size of the current HashClass
    temp_array = Array.new(@items.size * 2)

    #Loop over each HashItem in the @items array
    @items.each do |item|
      #If a HashItem exists, recalculate the index using the larger array size and set temp_array[i] equal to a HashItem
      #with the key, value pair currently in @items
      if item != nil
        i = index(item.key, temp_array.size)
        temp_array[i] = HashItem.new(item.key, item.value)
      end
    end

    #Reassign the value of @items to the resized array
    @items = temp_array
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @items.count
  end

end
