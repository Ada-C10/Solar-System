# Solar System class to keep track of a collection of planets
class SolarSystem
  attr_reader :star_name, :planets

  # Constructor method
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Method for adding planets
  def add_planet(planet)
    @planet = planet
    @planets << planet
  end

  # Prints list of planets in @planets array
  def list_planets
    planet_list = "Planets orbiting #{@star_name}\n"
    @planets.each.with_index do |planet_in_array, i|
      planet_list += "#{i + 1}. #{planet_in_array.name}\n"
    end
    return planet_list
  end

end
