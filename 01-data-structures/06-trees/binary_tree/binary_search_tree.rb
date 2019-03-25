require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root_node = root
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
    else
      if !root.left.nil?
        if root.left.title == data
          return root.left
        else
          return find(root.left, data)
        end
      end
      if !root.right.nil?
        if root.right.title == data
          return root.right
        else
          return find(root.right, data)
        end
      end
    end
  end


  def delete(root, data)
    #Find node to be deleted
    node = find(root, data)

    return nil if root.nil? || node.nil?

    if node.rating < root.rating
      root.left = self.delete(root.left, data)
    elsif node.rating > root.rating
      root.right = self.delete(root.right, data)
    else
      if root.left.nil? && root.right.nil?
        root = nil
      elsif root.left.nil?
        root = root.right
      elsif root.right.nil?
        root = root.left
      else
        temp_node = find_min_node(root.right)
        root = temp_node
        root.right = delete(root.right, temp_node.title)
      end
    end
    return root
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
    new_children = [];

    if children.nil?
      children = [@root_node]
    end

    while children.length > 0
      current_node = children.shift

      if !current_node.left.nil?
        new_children.push(current_node.left)
      end

      if !current_node.right.nil?
        new_children.push(current_node.right)
      end
      puts "#{current_node.title}: #{current_node.rating}"
    end

    self.printf(new_children) if new_children.length > 0
  end

end
