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
    planets_list = @planets.map.with_index do |planet, index|
      "#{index + 1}.  #{planet.name}"
    end

    "Planets orbiting #{@star_name}\n" << planets_list.join("\n")
  end


  def find_planet_by_name(planet_name)
  
      @planets.each do |planet|
        if planet_name.casecmp(planet.name) == 0
          return planet
        end
      end
      return nil
  end

end
