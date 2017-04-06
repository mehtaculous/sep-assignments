class City
  attr_accessor :name
  attr_accessor :neighbors
  attr_accessor :visited
  
  def initialize(name)
    @name = name
    @neighbors = []
    @visited = false
  end
end
  
def nearest_possible_neighbor(current_city)
  until current_city.visited
    neighbors = current_city.neighbors
    nearest = neighbors[0]

    for neighbor in neighbors
      if nearest[:city].visited
        nearest = neighbor
      end

      unless neighbor[:city].visited
        if neighbor[:distance] < nearest[:distance]
          nearest = neighbor
        end
      end
    end

    puts "#{current_city.name}"
    current_city.visited = true
    current_city = nearest[:city]
  end
end


chicago = City.new("Chicago")
seattle = City.new("Seattle")
los_angeles = City.new("Los Angeles")
ft_lauderdale = City.new("Ft. Lauderdale")
new_york = City.new("New York")


chicago.neighbors = [{city: seattle, distance: 1737}, {city: los_angeles, distance: 1746}, {city: ft_lauderdale, distance: 1357}, {city: new_york, distance: 1270}]

seattle.neighbors = [{city: chicago, distance: 1737}, {city: los_angeles, distance: 1135}, {city: ft_lauderdale, distance: 3274}, {city: new_york, distance: 2408}]
  
los_angeles.neighbors = [{city: chicago, distance: 1746}, {city: seattle, distance: 1135}, {city: ft_lauderdale, distance: 2332}, {city: new_york, distance: 2451}]
  
ft_lauderdale.neighbors = [{city: chicago, distance: 1357}, {city: seattle, distance: 3274}, {city: los_angeles, distance: 2332}, {city: new_york, distance: 1256}]

new_york.neighbors = [{city: chicago, distance: 1270}, {city: seattle, distance: 2408}, {city: los_angeles, distance: 2451}, {city: ft_lauderdale, distance: 1256}]


puts nearest_possible_neighbor(chicago)
# puts nearest_possible_neighbor(seattle)
# puts nearest_possible_neighbor(los_angeles)
# puts nearest_possible_neighbor(ft_lauderdale)
# puts nearest_possible_neighbor(new_york)

