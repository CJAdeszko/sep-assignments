require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root_node = Node.new(root.title, root.rating)
  end


  def insert(root, node)
    if node.rating < root.rating
      if root.left.nil?
        root.left = node
      else
        insert(root.left, node)
      end
    elsif node.rating > root.rating
      if root.right.nil?
        root.right = node
      else
        insert(root.right, node)
      end
    end
  end


  # Recursive Depth First Search
  def find(root, data)
    if root.title == data
      return root
    elsif root.right.nil? && root.left.nil?
      return nil
    elsif !root.left.nil?
      if root.left.title == data
        return root.left
      else
        find(root.left, data)
      end
    elsif !root.right.nil?
      if root.right.title == data
        return root.right
      else
        find(root.right, data)
      end
    end
  end


  def delete(root, data)
    #Find node to be deleted
    node = find(root, data)

    #If node exists, either delete or replace with appropriate node
    while !node.nil?
      #If the node has no children, set node = nil
      if node.left.nil? && node.right.nil?
        node = nil
      #If the node has a left child but no right child, set node = it's left child
      elsif !node.left.nil? && node.right.nil?
        node = node.left
      #If the node has a right child but no left child, set node = it's right child
      elsif node.left.nil? && !node.right.nil?
        node = node.right
      #If node has both left and right children, find the min node in the right subtree, replace node with min, remove min
      else
        min_node = find_min_node(node.right)
        node.title = min_node.title
        node.rating = min_node.rating
        min_node = min_node.right
      end
    end
    return node
  end


  def find_min_node(node)
    if node.left.nil?
      return node
    else
      find_min_node(node.left)
    end
  end


  # Recursive Breadth First Search
  def printf(children=nil)
    #start at root
    #if children.nil? start at root
    #print root_node
    #print left & right for that node then put their left and right into children then recurse

    queue = [];

    if !children.nil?
      queue.push(children)
    else
      queue.push(@root_node)
    end

    while(queue.length > 0)
      current_node = queue[0]

      if !current_node.left.nil?
        puts "Adding left child"
        printf(current_node.left)
      end

      if !current_node.right.nil?
        puts "Adding right child"
        printf(current_node.right)
      end

      print_node = queue.shift()
      puts "#{print_node.title}: #{print_node.rating}"
    end
  end

end
