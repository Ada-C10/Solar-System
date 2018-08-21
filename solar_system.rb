require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return "#{@planets}"
  end

end


# solar_system = SolarSystem.new("Sol")
#
# earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49e8, "Only planet known to support life")
# puts solar_system
# puts solar_system.add_planet(earth)
