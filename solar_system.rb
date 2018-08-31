require_relative 'planet'

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
    list = ""

    @planets.each_with_index do |planet, i|
      each_planet = "\n#{i + 1}. #{planet.name}"
      list << each_planet
    end

    return "Planets orbiting #{star_name}" + list
  end

  def find_planet_by_name(name="")
    @planets.each do |planet|
      if planet.name.upcase == name.upcase
        return planet
      end
    end
  end

  def distance_between(first_planet="", second_planet="")
    first_planet_distance = first_planet.distance_from_sun_km
    second_planet_distance = second_planet.distance_from_sun_km

    distance_between_planets =
    (first_planet_distance - second_planet_distance).abs

    return "Distance between #{first_planet.name} and #{second_planet.name} is #{distance_between_planets} kilometers"
  end
end
