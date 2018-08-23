require 'terminal-table'
require 'colorize'


class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    full_planet_list = ""
    count = 0
    @planets.map do |planet|
      count += 1
      full_planet_list += "\n#{count}. #{planet.name}"
    end
    return full_planet_list
  end

  def find_planet_by_name(planet)
    # .first is used to select first insert from array
    and not include in brackets
    @planets.select { |x| planet.capitalize == x.name.capitalize }.first
  end

  def distance_between(planet1, planet2)
   distance_between = (planet1.distance - planet2.distance).abs
   return "The distance between #{planet1.name} and #{planet2.name} is " <<
   "#{distance_between} km"
 end
end
