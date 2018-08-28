# SolarSystem, which is responsible for keeping
# track of a collection of instances of Planet.
require_relative 'planet'

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
    puts "Planets orbiting #{@star_name}"
    planet_list = []
    @planets.each_with_index do |planet, i|
      planet_list << "#{i + 1}. #{planet.name}"
    end
    return planet_list
  end

  def find_planet_by_name(planet_name)
    found_planet = @planets.select {|planet| planet.name == planet_name.downcase}
    return found_planet[0]
  end

end
