require_relative 'node'

class OpenAddressing
  def initialize(size)
    @items = Array.new(size)
  end


  def []=(key, value)

    #Variable to hold index for key passed
    i = index(key, self.size)

    #Variable for new node object in @items
    new_node = Node.new(key, value)

    #If there is a collision and the hash is not full, do not resize
    if (!@items[i].nil? && @items[i].value != value) && next_open_index(i) != -1
      @items[next_open_index(i)] = new_node
    #If there is a collision and the hash is full, resize and insert
    elsif (!@items[i].nil? && @items[i].value != value) && next_open_index(i) == -1
      resize
      @items[index(key, self.size)] = new_node
    else
      @items[i] = new_node
    end

  end


  def [](key)
    i = index(key, self.size)
    @items[i].value
  end


  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end


  # Given an index, find the next open index in @items
  def next_open_index(index)
    if @items.size > 1
      #Variable for portion of array to be searched, starting at provided index
      sub_array = @items.slice(index..@items.length)

      #Array to hold empty indices, if they exist
      empty_index = []

      #Iterate through sub-array looking for empty indices
      sub_array.each_with_index do |val, index|
        #If the value at the index is empty, add the index to the empty_index array
        if val.nil?
          empty_index << index
        end
      end

      #If the empty_index array is empty, return -1 because there are no open indices, otherwise, return the first index in empty_index
      if empty_index.empty?
        return -1
      else
        return empty_index.first
      end
    else
      return -1 #Because next_open_index only called after collision, if @items.size = 1 there can be no open indices, return -1
    end
  end


  # Simple method to return the number of items in the hash
  def size
    @items.count
  end


  # Resize the hash
  def resize
    #Create a temp array that is twice the size of the current hash
    temp_array = Array.new(@items.size * 2)

    #Loop over each Node in the @items array
    @items.each do |item|
      #If a Node exists, recalculate the index using the larger array size and set temp_array[i] equal to a Node
      #with the key, value pair currently in @items
      if item != nil
        i = index(item.key, temp_array.size)
        temp_array[i] = Node.new(item.key, item.value)
      end
    end

    #Reassign the value of @items to the resized array
    @items = temp_array
  end
end
