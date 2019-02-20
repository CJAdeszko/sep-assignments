require_relative 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
    if self.head == nil #If no head exists, node should be both head and tail
      self.add_to_front(node) #Create head
      self.tail = node  #Create tail
    else
      self.tail.next = node #Add new node as .next for current tail
      self.tail = node #Update tail to new node
    end
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
    if self.head == self.tail #If there is only one node (head = tail), both the head and the tail should be removed
      self.head = nil
      self.tail = nil
    else
      temp_node = self.head #Temp_node for comparison
      while temp_node.next #Loop until current tail is found
        prev_node = temp_node
        temp_node = temp_node.next
      end
      self.tail = prev_node
    end
  end

  # This method prints out a representation of the list.
  def print
      node = self.head
      while node
        puts node.data
        node = node.next
      end
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
    if self.head == node
      self.head = self.head.next #If the head is the node to be deleted, set head to head.next
    else
      temp_node = self.head #Temporary node for comparison
      while temp_node != node #Loop through all nodes until node to be deleted is found
        prev_node = temp_node #Set prev_node = temporary node
        temp_node = temp_node.next #Set temporary node = next node
      end
      if self.tail == node #If node to delete is the tail, set new tail
        prev_node.next = temp_node.next #When node to be deleted is found, set prev_node.next = node to be deleted .next
        self.tail = prev_node
      else
        prev_node.next = temp_node.next #When node to be deleted is found, set prev_node.next = node to be deleted .next
      end
    end
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
    if self.head
      node.next = self.head
    end
    self.head = node
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
    temp_node = self.head
    self.head = temp_node.next
    temp_node
  end
end
