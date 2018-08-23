require_relative 'planet'

# Building a SolarSystem class
# which is responsible for keeping track of a collection of instances of Planet.
class SolarSystem

# star_name parameter is saved as an instance variable.
# also an instance variable called @planets, to store an array of planets.
# @planets is set as an empty array.
# Both @star_name and @planets are readable but not writable.

  attr_reader :star_name,:planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

# New method which will take an instance of Planet
# as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet
    return @planets
  end

 # New method which will return
 # a string containing a list of all the planets
 # in the system.
  def list_planets
    planet_list = "Planets orbiting #{@star_name} "
    i = 1
    @planets.each do |planet|
      planet_list += "\n #{i}. #{planet.name}"
      i += 1
    end
    return planet_list
  end

# New method that takes the name of a planet as a string,
# and returns the corresponding instance of Planet.
# The lookup should be case-insensitive, so that Earth, earth and eArTh all return the same planet.

  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name.downcase == planet_string.downcase
        return planet
      end

      return "This planet doesn't exist"
      
    end

  end

end
