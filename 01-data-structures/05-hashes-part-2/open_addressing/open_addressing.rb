require_relative 'node'

class OpenAddressing
  attr_accessor :items

  def initialize(size)
    @items = Array.new(size)
  end


  def []=(key, value)

    i = index(key, size)

    new_node = Node.new(key, value)

      if @items[i] == nil
        @items[i] = new_node
      elsif @items[i].key != key
        self.resize
        self[key] = value
      elsif @items[i].key == key && @items[i].value != value
        if self.next_open_index(i) == -1
          self.resize
          @items[i] = new_node
        else
          @items[i] = new_node
        end
      end

  end


  def [](key)
    i = index(key, self.size)

    if !@items[i].nil? && @items[i].key == key
      @items[i].value
    end
  end


  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end


  # Given an index, find the next open index in @items
  def next_open_index(index)
    @items.each_with_index do |item, index|
      if item.nil?
        return index
      end
    end
    return -1
  end


  # Simple method to return the number of items in the hash
  def size
    @items.count
  end


  # Resize the hash
  def resize
    temp_array = @items

    @items = Array.new(self.size * 2)

    #Loop over each Node in the @items array
    temp_array.each do |item|
      if item != nil
        self[item.key] = item.value
      end
    end
  end

  def print
    @items.each do |item|
      if !item.nil?
        i = index(item.key, size)
        puts "Hash Index: " + i.to_s
        puts "Key: " + item.key + ", " + "Value: " + item.value
      end
    end
  end
end
