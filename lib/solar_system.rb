require 'pry'
class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    # INITIALIZING planets array to begin as empty
    @planets = []
    @star_name = star_name
  end

  # METHOD to add planet to planets
  def add_planet(planet)
    # PUSHING planet to planets array
    @planets << planet
  end

  # METHOD to list planets in solar system
  def list_planets
    # SETTING iterator with start value 1
    i = 1
    # ADDING first line of string to planet_lsit
    planet_list = "Planets orbiting #{@star_name}:\n"
    # ADDING to planet_list message via looping through planets array
    @planets.each do |planet|
      # ADDING each planet to message
      planet_list +="#{i}.#{planet.name}\n"
      # INCREASING iterator
      i += 1
    end
    return planet_list
  end

  # METHOD to return planet user has entered
  def find_planet_by_name(name)

    # SELECTING planet with given name
    found_planet = @planets.select { |planet| planet.name.downcase == name.downcase }
    # RETURNING string to user if planet is not listed
    return "Sorry, #{name} is not in our system" if found_planet.empty?

    # RETURNS corresponding instance of Planet (research what to do for multiple results)
    return found_planet[0]
  end
end
