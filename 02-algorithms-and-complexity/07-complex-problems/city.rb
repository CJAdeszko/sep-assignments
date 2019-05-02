class City
  attr_accessor :city
  attr_accessor :neighbors
  attr_accessor :visited

  def initialize(city)
    @city = city
    @neighbors = Hash.new()
    @visited = false
  end
end
