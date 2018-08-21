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
      list << "#{index + 1}. #{planet.name}"
    end
    # pushing the top explanation into the array, so it'll print out as the question asks.
    # list.push "Planets orbiting #{@star_name}:"
    # list.insert(0, list.delete_at(2))
    return list
  end

  def find_planet_by_name(planet) #"Earth"
    @planets.each do |planets| #@planet = [earth, mars, jupiter]
      if planet == planets.name.capitalize
        found_planet = planets
      end
      return found_planet

    end
  end
end
