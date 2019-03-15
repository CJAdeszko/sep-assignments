require_relative 'node'

class BinarySearchTree

  def initialize(root)
    @root_node = Node.new(root.title, root.rating)
  end


  def insert(root, node)
      if node.title == root.title
        return root
      elsif node.rating < root.rating
        insert(root.left, node)
      elsif node.rating > root.rating
        insert(root.right, node)
      else
        return root = Node.new(node.title, node.rating)
      end

  end


  # Recursive Depth First Search
  def find(root, data)
    if data.rating == root.rating
      return root
    elsif data.rating < root.rating
      find(root.left, data)
    elsif data.rating > root.rating
      find(root.right, data)
    else
      return nil
    end
  end


  def delete(root, data)
    node = find(root, data)

    if !node.nil?
      if node.left.nil? && node.right.nil?
        node = nil
      elsif !node.left.nil && node.right.nil?
        node = node.left
      elsif node.left.nil && !node.right.nil?
        node = node.right
      else
        min_node = find_min_node(node.right)
        node = min_node
        min_node = nil
      end
    end
    node
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
  end
end
