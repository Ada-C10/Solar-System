require_relative 'planet'
require 'pry'

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

    return_statement = "Planets orbiting #{@star_name}\n"

    @planets.each_with_index do |planet, index|
      return_statement  << "#{index + 1}. #{planet.name}\n"
    end

    return "#{return_statement}"

  end

  #what to do if planet name is nil? how to search?
  def find_planet_by_name(planet)

    planet_name = planet.upcase

    @planets.each do |planet|
      if planet_name == planet.name.upcase
        return planet
      end
    end
  end

end
