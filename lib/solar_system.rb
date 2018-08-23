require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets
  attr_writer :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # take an instance of Planet as a parameter and add it to the list of planets
  def add_planet(planet)
    @planets << planet
  end

  # return a string containing a list of all the planets in the system.
  def list_planets
    planet_list = ""
    i = 1

    @planets.each do |planet|
      planet_list += "\n#{i}. #{planet.name}"
      i += 1
    end
    return "Planets orbiting #{@star_name} #{planet_list}"
  end

  # takes the name of a planet as a string, and returns the corresponding instance of Planet. The lookup should be case-insensitive.
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet.summary
      end
    end
    return "No such planet found orbiting #{@star_name}"
  end
# What should your method do if there is no planet with the given name?
# What should your method do if there are multiple planets with the given name?
# Is there a built-in Ruby enumerable method that could help you here?


  # that takes two planet names as parameters and returns the distance between them -- assume that all the planets are lined up in a straight line
  def distance_between
  end

end
