require_relative 'planet.rb'
class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(name)
    @planets << name
    return @planets
  end

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
  def find_planet_by_name(name_used)
    @planets.each do |planet|
      if (name_used).upcase == (planet.name).upcase
        return planet
      end
    end
  end
end

solar_system = SolarSystem.new('Sol')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8,
  'Only planet known to support life')
solar_system.add_planet(earth)
venus = Planet.new('Venus', 'red', 3.7848, 2.43869,
  'Evening Star')
solar_system.add_planet(venus)

list = solar_system.list_planets
puts list
found_planet = solar_system.find_planet_by_name('Earth')
puts found_planet
puts found_planet.summary
