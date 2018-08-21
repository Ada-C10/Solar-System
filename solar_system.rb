require 'pry'

class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  # attr_writer :planets
  attr_reader :star_name


  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = @planets.map.with_index do |planet, index|
      "#{index + 1}. #{planet.name}\n"
    end
    return "Planets orbiting #{star_name}\n" + list.join
  end

  def find_planet_by_name(planet_string)
    found_planets = []
    @planets.each do |planet|
      if planet_string.capitalize == planet.name
        found_planets << planet
      else
        "There is no such planet in this solar system"
      end
    end
    if found_planets.length > 1
      puts "We found multiple planets. #{found_planets}"
      return found_planets
    else
      found_planets.reduce
    end

    def distance_between(planet_one, planet_two)
      if planet_one.distance_from_sun_km > planet_two.distance_from_sun_km
        return planet_one.distance_from_sun_km - planet_two.distance_from_sun_km.round
      else planet_two.distance_from_sun_km > planet_one.distance_from_sun_km
        return planet_two.distance_from_sun_km - planet_one.distance_from_sun_km
      end
    end

  end


end
