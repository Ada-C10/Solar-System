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

  def find_planet_by_name(planet_to_find)
    @planet_to_find = planet_to_find.downcase
    found_planet = @planets.find { |planet| planet.name.downcase == @planet_to_find }
    if found_planet == nil
      raise ArgumentError, "There is no planet chosen"
    elsif @planets.count { |planet| found_planet.name == planet.name } >= 2
      raise ArgumentError, "There is more than one planet with that name."
    else
      return found_planet
    end
  end
end
