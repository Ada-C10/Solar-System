require 'pry'
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
    string = " "
    i = 0
    @planets.map do |planet|
      i += 1
      string +=  "#{i}:#{planet.name}\n "
    end
    return "Planets orbiting #{star_name}:\n#{string}"
  end

  def find_planet_by_name(name_given)
    name_given = name_given.downcase.capitalize
    found_planet = []
    @planets.each do |planet|
      if name_given == planet.name
        found_planet << planet
      end
    end
    return found_planet
  end
end
