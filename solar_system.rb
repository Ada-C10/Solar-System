# access planet.rb
require_relative 'planet'

# creates new solar system
class SolarSystem
  # allows other files to access the two variables below
  attr_reader :planets, :star_name

  # adds new planet to array @planets
  def add_planet(planet)
    @planets << planet
  end

  # lists all planets user has created
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

  # searches for the planet user has asked for
  # then returns it
  def find_planet_by_name(planet)
    lookup_planet = planet

    @planets.each do |planet|
      if planet.name.casecmp(lookup_planet) == 0
        return planet
      end
    end
  end

  # for each new solar system,
  # planets array is created to store new planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
end
