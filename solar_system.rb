# creates a class with with star name passed as instance
# has method to list planets orbiting the star
# has method to print details about planet when user enters a name

require_relative 'planet.rb'
class SolarSystem
  # constructor
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  #reader
  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  # method prints names of planets orbiting the star
  def list_planets
    x = "Planets orbitting #{@star_name}\n"
    z = ""
    z = z + x
    l = 1
    while l <= @planets.length
      y = "#{l}. #{@planets[l-1].name}\n"
      z += y
      l += 1
    end
    return z
  end

  # finds and returns planet information depending on user input
  def find_planet_by_name(name_used)
    @planets.each do |planet|
      if (name_used).upcase == (planet.name).upcase
        return planet
      end
    end
  end

end
