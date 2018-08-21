require 'pry'
class SolarSystem

  attr_reader :star_name, :planets


  def initialize(star_name)
    # Starting planets array as empty
    @planets = []
    @star_name = star_name
  end

  def add_planet(planet)
    # PUSHING planet to planets array
    @planets << planet
  end

  def list_planets
    # Setting iterator with start value 1
    i = 1
    # Adding first line of string to planet_lsit
    planet_list = "Planets orbiting #{@star_name}:\n"
    # Adding to planet_list via looping through planets array
    @planets.each do |planet|
      # Adding each planet to message
      planet_list +="#{i}.#{planet.name}\n"
      # Increasing iterator
      i += 1
    end
    return planet_list
  end

  def find_planet_by_name(name)

    # Selecting planet with that name
    found_planet = @planets.select { |planet| planet.name.downcase == name.downcase }
    # RETURNING string to user if planet is not listed
    return "#{name} is not in our system" if found_planet.empty?
    binding.pry
    # binding.pry
    # RETURNS corresponding instance of Planet
    return found_planet[0]
  end
end
