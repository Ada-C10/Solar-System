require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets

    list = ""

    @planets.each_with_index do |planet, i|
      each_planet = "\n#{i + 1}. #{planet}"
      list << each_planet
    end

    return "Planets orbiting #{star_name}" + list

  end

end


solar_system = SolarSystem.new("Sol")

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49e8, "Only planet known to support life")
jupiter = Planet.new("Jupiter", "shades of white, brown, and yellow", 1.898e27, 7.785e8, "It does not have a true surface, as the planet is mostly swirling gases and liquids")


puts solar_system.add_planet(earth)
puts solar_system.add_planet(jupiter)
puts solar_system.list_planets
