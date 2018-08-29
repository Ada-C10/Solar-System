require 'pry'

class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader( :star_name, :planets)

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
      end
    end
    if found_planets.length > 1
      dup_summary = found_planets.map.with_index do |dupe_planet, i|
        "#{i + 1}. #{dupe_planet.summary}"
      end
      dup_summary.unshift("We found multiple planets:")
      return dup_summary
    elsif found_planets.length == 0
        return "No such planet!"
    else
      return found_planets.reduce.summary
    end
  end

  def distance_between(planet_one, planet_two)
    if planet_one.distance_from_sun_km > planet_two.distance_from_sun_km
      distance = planet_one.distance_from_sun_km - planet_two.distance_from_sun_km.round
      return distance
    else planet_two.distance_from_sun_km > planet_one.distance_from_sun_km
      distance = planet_two.distance_from_sun_km - planet_one.distance_from_sun_km
      return distance
    end
  end
end
