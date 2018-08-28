require 'minitest'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}: \n"
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name} \n"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    planet_name.downcase!
    planet_name.capitalize!

    planet = @planets.select { |planet| planet.name == planet_name }
    if planet == []
      raise ArgumentError, "There is no planet with that name."
    else
      return planet[0]
    end
  end

  def distance_between(planet1, planet2)
    two_planets = @planets.select { |planet| planet.name == planet1 || planet.name == planet2 }
    distance = two_planets[0].distance_from_sun_km - two_planets[1].distance_from_sun_km
    return distance.abs
  end

end
