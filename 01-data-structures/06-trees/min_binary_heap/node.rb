class Node
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :left
  attr_accessor :right

  def initialize(title, rating)
    @title = title
    @rating = rating
    @left = nil
    @right = nil
  end

  def has_children?
    if !@left.nil? || !@right.nil?
      return true
    end
  end
end
