require 'pry'
class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    string = "Planets orbiting #{@star_name}: \n"
    list = planets.map.with_index do |planet, index|
      "#{index+1}. #{planet.name}\n"
    end
    return string + list.join
  end
  # map adds a nill if it does not exist
  def find_planet_by_name(target_planet)
    planets.select { |planet| return planet if planet.name.upcase == target_planet.upcase }
  end
end
