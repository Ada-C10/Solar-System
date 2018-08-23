class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name #Sol
    @planets = []
  end

# Placing each of the planets to an array of planets (@planets) in this solar system (Sol)
  def add_planet (planet)
    return @planets << planet
  end

# Creating strings with each planet name and their index (+1) to create the numbered list.
  def list_planets
    list = []
    @planets.each_with_index do |planet, index|
      list << "#{index + 1}. #{planet.name.capitalize}"
    end
    return list
  end

  def find_planet_by_name(planet) #"Earth"
    found_planet = nil
    @planets.each do |planets| #@planets = [earth, mars, jupiter]
      if planet.upcase == planets.name.upcase
        found_planet = planets
      end
    end
    return found_planet
  end
end

# in the above method, can also just return planet.upcase == planets.name.upcase rather than creating another variable.  Leaving it the way it is because it's more intuitive for me at the moment.
