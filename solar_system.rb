require_relative 'planet'
require 'pry'

class SolarSystem
  attr_reader :planets, :star_name

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_of_planets = "Planets orbiting #{star_name}\n"

    count = 1
    @planets.each do |planet|
      new_planet = "#{count}. #{planet.name}\n"
      list_of_planets << new_planet
      count += 1
    end

    return list_of_planets
  end

  def find_planet_by_name(planet)
    lookup_planet = planet

    @planets.each do |planet|
      if planet.name.casecmp(lookup_planet) == 0
        return planet
      end
    end
  end

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end
