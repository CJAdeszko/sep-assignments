class Node
  attr_accessor :name
  attr_accessor :film_actor_hash
  attr_accessor :searched_flag

  def initialize (name)
    @name = name
    @film_actor_hash = Hash.new()
    @searched_flag = false
  end
  
end
