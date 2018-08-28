require_relative 'planet'

require 'pry'

class SolarSystem


  attr_reader :star_name, :planets

  def initialize(star_name)

    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    #argument error if planet.class == Planet

    @planets << planet
  end


  def list_planets


    numbered_planets = @planets.map.with_index do |planet, index|

      "#{index + 1 }. " + planet.name.capitalize

    end

    first_line = "Planets orbiting #{@star_name}"

    return numbered_planets.reduce(first_line) do |return_statement, numbered_planet|

      return_statement + "\n" + numbered_planet

    end
  end

  #what to do if planet name is nil? how to search?
  #how to write test to check if planet name is nil
  def find_planet_by_name(planet)


    planet_name = planet.upcase

    @planets.each do |planet|
      if planet_name == planet.name.upcase
        return planet
      end
    end
  end

end


# solar_system = SolarSystem.new('Sol')
#
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# mars = Planet.new('Mars', 'red', 10, 100, 'Martians')
# venus = Planet.new('Venus', 'russet', 7, 23, 'Serena')
#
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
# solar_system.add_planet(venus)
#
#
# puts solar_system.list_planets
