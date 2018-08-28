require_relative 'planet'
require_relative 'solar_system'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    i = 1
    @planets.each do |planet|
      list += "#{i}. #{planet.name}\n"
      i += 1
    end
    return list
  end

  def find_planet_by_name(found_planet)
    @planets.each do |planet|
      if planet.name.downcase == found_planet.downcase
        return planet
        # else
        #   "That is not one of our planets."
      end
    end
  end
end
