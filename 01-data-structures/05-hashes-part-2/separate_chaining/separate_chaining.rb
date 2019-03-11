require_relative 'linked_list'


class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @items = Array.new(size)
    @max_load_factor = 0.7
    @total_nodes = 0
  end

  def []=(key, value)
    #Variable to hold index for key passed
    i = index(key, self.size)

    #Variable to hold new Node object for LinkedList
    new_node = Node.new(key, value)

    if @items[i].nil?
      @items[i] = LinkedList.new
    end

    #Add a new Node to the LinkedList
    @items[i].add_to_tail(new_node)
    @total_nodes += 1

    if self.load_factor > @max_load_factor
      resize
    end
  end


  def [](key)
    i = index(key, self.size)
    @head = @items[i].head

    until @head.nil?
        return @head.value if @head.key == key
        @head = @head.next
    end
    return
  end


  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end


  # Calculate the current load factor
  def load_factor
    @total_nodes.to_f/ self.size.to_f
  end


  # Simple method to return the number of items in the hash
  def size
    @items.count
  end


  # Resize the hash
  def resize
    #Create a temp array that is twice the size of the current hash
    temp_array = Array.new(@items.size * 2)

    #Loop over each LinkedList in the @items array
    @items.each do |item|
      #If a LinkedList exists, recalculate the index of each Node using the larger array size and set temp_array[i]
      #equal to a LinkedList with the key, value pair currently in @items
      if !item.nil?
        i = index(item.head.key, temp_array.size)

        temp_array[i] = LinkedList.new if temp_array[i].nil?

        temp_array[i].add_to_tail(Node.new(item.head.key, item.head.value))
        item.head = item.head.next
      end
    end

    #Reassign the value of @items to the resized array
    @items = temp_array
  end

  #Prints the current locations and values of the Hash
  def print
    @items.each do |list|
      if !list.nil?
        i = index(list.head.key, self.size)
        puts "Hash Index: " + i.to_s
        list.print
      end
    end
    puts "Total_Nodes: " + @total_nodes.to_s
    puts "Load_Factor: " + self.load_factor.to_s
  end

end
