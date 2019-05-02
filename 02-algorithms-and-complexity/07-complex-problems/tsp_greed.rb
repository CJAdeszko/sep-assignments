require_relative 'city'

def traveling_salesman(current_city, path = [])
  neighbor_cities = current_city.neighbors
  nearest_neighbor = nil

  for current_neighbor, distance in neighbor_cities
    if (nearest_neighbor.nil? || distance < nearest_neighbor["distance"]) && current_neighbor.visited == false
      nearest_neighbor = {"city" => current_neighbor, "neighbors" => current_neighbor.neighbors, "distance" => distance}
    end
  end

  current_city.visited = true
  path << current_city.city
  return path if nearest_neighbor.nil?
  traveling_salesman(nearest_neighbor["city"], path)
end
